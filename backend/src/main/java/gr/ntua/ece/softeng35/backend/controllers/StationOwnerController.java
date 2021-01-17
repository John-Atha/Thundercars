
package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;
import org.springframework.http.*;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.node.*;
import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.StationOwner;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.math.*;
import java.lang.*;
import org.json.*;


@RestController
class StationownerController {
  private final StationOwnerRepository repository;

  StationownerController(StationOwnerRepository repository) {      
    this.repository = repository;
  }
  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/stationowners/{id}/profile")
  JsonNode myProfile(@PathVariable Optional<Integer> id) {
    if (!id.isPresent()) {
      throw new BadRequestException();
    }
    else {
      List<Integer> allStationOwners = repository.findAllStationOwnersIds();
      if (!allStationOwners.contains(id.get())) {
        throw new BadRequestException();
      }
      else {
        List<List<Object>> info=repository.findInfoForStationOwner(id.get());
        List<Object> userBasic = info.get(0);
        if (userBasic.size()==0) {
          throw new NoDataFoundException();
        }
        List<Integer> addresses=repository.findAddressForStationOwner(id.get());
        Integer addressId = addresses.get(0);
        Boolean hasAddress = true;
        Boolean hasCountry = true;
        List<List<Object>> addressInfo;
        List<Object> addressBasic = new ArrayList();
        List<Integer> countries=repository.findCountryForStationOwner(addressId);
        Integer countryId = null;
        if (countries.size()!=0) {
          countryId= countries.get(0);
        }
        List<List<Object>> countryInfo;
        List<Object> countryBasic = new ArrayList();
        if (addressId==null) {
          hasAddress=false;
          hasCountry=false;
        }
        else {
          addressInfo = repository.findAddressInfoForStationOwner(addressId);
          addressBasic = addressInfo.get(0);
        }
        if (hasAddress==true) {
          if (countryId==null) {
            hasCountry=false;
          }
          else {
            countryInfo = repository.findCountryInfoForStationOwner(countryId);
            countryBasic = countryInfo.get(0);
          }
        }
        
        List<List<Object>> stationIDsAndTitles = repository.findOwnersStations(id.get());

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode answer = mapper.createObjectNode();
        ArrayNode stationsList = mapper.createArrayNode();

        answer.put("Station Owner name", (String) userBasic.get(0));
        answer.put("Email", (String) userBasic.get(1));
        answer.put("First Name", (String) userBasic.get(2));
        answer.put("Last Name", (String) userBasic.get(3));
        answer.put("Date Of Birth", userBasic.get(4).toString());
  
        if (hasAddress==false) {
          answer.put("Address", "Unknown");
        }
        else {
          answer.put("AddressLine 1", (String) addressBasic.get(0));
          answer.put("Town", (String) addressBasic.get(1));
          answer.put("State Or Province", (String) addressBasic.get(2));
          answer.put("Postcode", (String) addressBasic.get(3));
          answer.put("Contact Telephone 1", (String) addressBasic.get(4));
          answer.put("Contact Telephone 2", (String) addressBasic.get(5));
        }
        if (hasCountry==false) {
          answer.put("Country", "Unknown");
        }
        else {
          String country = (String) countryBasic.get(0) + " (" + (String) countryBasic.get(1) + ")";
          answer.put("Country", country);
          answer.put("Continent", (String) countryBasic.get(2));
        }

        for (List<Object> station : stationIDsAndTitles) {
          ObjectNode curr = mapper.createObjectNode();
          curr.put("Station Id", (Integer) station.get(0));
          curr.put("Station Title", (String) station.get(1));
          stationsList.add(curr);
        }
        answer.put("Stations", stationsList);

        String ugly = answer.toString();
        try {
          JsonNode node = mapper.readTree(ugly);
          return node;
        }
        catch (Exception e) {
          JsonNode node = null;
          return node;
        } 
      }
    }
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/stationowners")
  List<StationOwner> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/stationowners")
  StationOwner newStationOwner(@RequestBody StationOwner newStationOwner) {
    return repository.save(newStationOwner);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/stationowners/{id}")
  StationOwner one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new StationOwnerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/stationowners/{id}")
  StationOwner replaceStationOwner(@RequestBody StationOwner newStationOwner, @PathVariable Integer id) {
    return repository.findById(id)
      .map(stationOwner -> {
        stationOwner.setUsername(newStationOwner.getUsername());
        stationOwner.setPassword(newStationOwner.getPassword());
        stationOwner.setEmailAddr(newStationOwner.getEmailAddr());
        stationOwner.setFirstName(newStationOwner.getFirstName());
        stationOwner.setLastName(newStationOwner.getLastName());
        stationOwner.setAddress(newStationOwner.getAddress());
        stationOwner.setDateOfBirth(newStationOwner.getDateOfBirth());
        return repository.save(stationOwner);
      })
      .orElseThrow(() -> new StationOwnerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/stationowners/{id}")
  void deleteStationOwner(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
