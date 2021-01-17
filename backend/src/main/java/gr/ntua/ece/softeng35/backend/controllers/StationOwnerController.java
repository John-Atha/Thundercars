
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
  JsonNode myProfile(@PathVariable Integer id) {
    List<Integer> allStationOwners = repository.findAllStationOwnersIds();
    if (!allStationOwners.contains(id)) {
      throw new BadRequestException();
    }
    else {
      List<List<Object>> info=repository.findInfoForStationOwner(id);
      List<Object> userBasic = info.get(0);
      if (userBasic.size()==0) {
        throw new NoDataFoundException();
      }
      List<Integer> addresses=repository.findAddressForStationOwner(id);
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
      
      List<List<Object>> stationIDsAndTitles = repository.findOwnersStations(id);

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

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/stationowners/{id}/myStations")
  JsonNode myStations(@PathVariable Integer id) {
    List<Integer> allStationOwners = repository.findAllStationOwnersIds();
    if (!allStationOwners.contains(id)) {
      throw new BadRequestException();
    }
    else {
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode finalAnswer = mapper.createObjectNode();;
      ArrayNode all = mapper.createArrayNode();
      List<Integer> MyStations = repository.findOwnersStationsIds(id);
      
      for (Integer i : MyStations) {
        List<List<Object>> basicInfos = repository.findStationsBasicInfo(i);
        if (basicInfos.size()==0) {
          continue;
        }
        List<Object> basicInfo = basicInfos.get(0);
        List<List<Object>> operatorInfos = repository.findStationsOperatorInfo((Integer) basicInfo.get(2));
        List<Object> operatorInfo = new ArrayList();
        if (operatorInfos.size()!=0) {
          operatorInfo = operatorInfos.get(0);
        }
        
        List<List<Object>> addressInfos = repository.findStationsAddressInfo((Integer) basicInfo.get(3));
        List<Object> addressInfo = new ArrayList();
        if  (addressInfos.size()!=0) {
          addressInfo = addressInfos.get(0);
        }

        List<Integer> spots = repository.findStationSpotsFromStation(i);
        
        ObjectNode answer = mapper.createObjectNode();
        answer.put("Id", i);
        if (basicInfo.get(3)!=null && addressInfos.size()!=0) {
          answer.put("Title", (String) addressInfo.get(14));
        }
        answer.put("UUID", (String) basicInfo.get(0));
        if (basicInfo.get(1)!=null) {
          answer.put("Current Provider's Name", (String) repository.findCurrentProviderName((Integer) basicInfo.get(1)));
        }
        else {
          answer.put("Current Provider", "Unknown");
        }

        answer.put("Rating", (Double) basicInfo.get(9));
        answer.put("Cost Per kWh", (Double) basicInfo.get(10));
        answer.put("Comments", (String) basicInfo.get(5));
        answer.put("Date Created", basicInfo.get(6).toString());
        if (basicInfo.get(7)!=null) {
          answer.put("Status Type", (String) repository.findStatusTypeTitle((Integer) basicInfo.get(7)));
        }
        else {
          answer.put("Status Type", "Unknown");
        }
        if (basicInfo.get(8)!=null) {
          answer.put("Submission Status", (String) repository.findSubmissionStatusTitle((Integer) basicInfo.get(8)));
        }
        else {
          answer.put("Submission Status", "Unknown");
        }

        if (basicInfo.get(4)!=null) {
          answer.put("Usage Type", (String) repository.findUsageTypeTitle((Integer) basicInfo.get(4))); 
        }
        else {
          answer.put("Usage Type", "Unknown");
        }

        if (basicInfo.get(2)!=null && operatorInfos.size()!=0) {
          answer.put("Operator", (Integer) operatorInfo.get(0));
          answer.put("Operator's Name", (String) operatorInfo.get(1));
        }
        else {
          answer.put("Operator", "Unknown");
        }

        if (basicInfo.get(3)!=null && addressInfos.size()!=0) {
          answer.put("First Address", (String) addressInfo.get(0));
          answer.put("Secondary Address", (String) addressInfo.get(1));
          answer.put("Town", (String) addressInfo.get(2));
          answer.put("State / Province", (String) addressInfo.get(3));
          answer.put("Postcode", (String) addressInfo.get(4));
          answer.put("Latitude", (Double) addressInfo.get(5));
          answer.put("Longtitude", (Double) addressInfo.get(6));
          answer.put("Contact Telephone 1", (String) addressInfo.get(7));
          answer.put("Contact Telephone 2", (String) addressInfo.get(8));
          answer.put("Contact Email", (String) addressInfo.get(9));
          answer.put("Access Comments", (String) addressInfo.get(10));
          answer.put("Address' Related URL", (String) addressInfo.get(11));
          answer.put("Adderss' General Comments", (String) addressInfo.get(12));
          if (addressInfo.get(13)!=null) {
            List<List<Object>> countryInfos = repository.findStationsCountryInfo((Integer) addressInfo.get(13));
            List<Object> countryInfo =  new ArrayList();
            if (addressInfos.size()!=0) {
              countryInfo = countryInfos.get(0);
              String country = (String) countryInfo.get(0) + "(" + (String) countryInfo.get(1) + ")";
              answer.put("Country", country);
              answer.put("Continent", (String) countryInfo.get(2));
            }
            else {
              answer.put("Country", "Unknown");
            }
          }
          else {
            answer.put("Country", "Unknown");
          }
        }
        else {
          answer.put("Address", "Unknown");
        }
        ArrayNode SpotsList = mapper.createArrayNode();
        if (spots.size()!=0) {
          for (Integer spot : spots) {
            ObjectNode curr = mapper.createObjectNode();
            curr.put("Spot", spot);
            SpotsList.add(curr);
          }
        }
        answer.put("Spots", SpotsList);

        all.add(answer);
      }
      
      finalAnswer.put("StationsList", all);
      String ugly = finalAnswer.toString();
      try {
        JsonNode node = mapper.readTree(ugly);
        return node;
      }
      catch(Exception e) {
        JsonNode node = null;
        return null;
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
