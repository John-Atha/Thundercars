
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
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.math.*;
import java.lang.*;
import org.json.*;


@RestController
public class StationOwnerController {
  private final StationOwnerRepository repository3;
  private final UserRepository repository2;
  private final AdminRepository repository1;

  StationOwnerController(StationOwnerRepository repository3,  AdminRepository repository1, UserRepository repository2) {      
    this.repository3 = repository3;
    this.repository2 = repository2;
    this.repository1 = repository1;
  }
  
  /*
  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/stationownersmod/{username}")
  StationOwner oneOwner(@PathVariable String username) {
      if (repository.findByUsername(username)!=null) {
          return repository.findByUsername(username);
      }
      else {
          throw new NoDataFoundException();
      }
  }
   */
  
  public static String generateToken() {
    String key = new String();
    key = "";
    List<Character> chars = Arrays.asList('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
    
    Random ran = new Random();
    int randIndex = ran.nextInt(chars.size());
    for (int i=0; i<14; i++) {
        if (i==4 || i==9) {
            key += '-';
        }
        else {
            key += chars.get(ran.nextInt(chars.size()));
        }
    }
    return key;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/stationowners/{id}/profile")
  JsonNode myProfile(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    List<Integer> allStationOwners = repository3.findAllStationOwnersIds();
    if (!allStationOwners.contains(id)) {
      throw new BadRequestException();
    }
    else {
      List<List<Object>> info=repository3.findInfoForStationOwner(id);
      List<Object> userBasic = info.get(0);
      if (userBasic.size()==0) {
        throw new NoDataFoundException();
      }
      List<Integer> addresses=repository3.findAddressForStationOwner(id);
      Integer addressId = addresses.get(0);
      Boolean hasAddress = true;
      Boolean hasCountry = true;
      List<List<Object>> addressInfo;
      List<Object> addressBasic = new ArrayList();
      List<Integer> countries=repository3.findCountryForStationOwner(addressId);
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
        addressInfo = repository3.findAddressInfoForStationOwner(addressId);
        addressBasic = addressInfo.get(0);
      }
      if (hasAddress==true) {
        if (countryId==null) {
          hasCountry=false;
        }
        else {
          countryInfo = repository3.findCountryInfoForStationOwner(countryId);
          countryBasic = countryInfo.get(0);
        }
      }
      
      List<List<Object>> stationIDsAndTitles = repository3.findOwnersStationsIdAndAddress(id);

      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ArrayNode stationsList = mapper.createArrayNode();

      answer.put("Station Owner name", (String) userBasic.get(0));
      answer.put("Email", (String) userBasic.get(1));
      answer.put("First Name", (String) userBasic.get(2));
      answer.put("Last Name", (String) userBasic.get(3));
      answer.put("Date Of Birth", userBasic.get(4)!=null ? userBasic.get(4).toString() : null);

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
        if (station.get(1)!=null) {
          curr.put("Station Title", repository3.findStationsTitle((Integer) station.get(1)));
        }
        else {
          curr.put("Station Title", "Unknown");
        }
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
  @GetMapping("/evcharge/api/stationowners/{id}/mystations")
  JsonNode myStations(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    List<Integer> allStationOwners = repository3.findAllStationOwnersIds();
    if (!allStationOwners.contains(id)) {
      throw new BadRequestException();
    }
    else {
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode finalAnswer = mapper.createObjectNode();;
      ArrayNode all = mapper.createArrayNode();
      List<Integer> MyStations = repository3.findOwnersStationsIds(id);
      
      for (Integer i : MyStations) {
        List<List<Object>> basicInfos = repository3.findStationsBasicInfo(i);
        if (basicInfos.size()==0) {
          continue;
        }
        List<Object> basicInfo = basicInfos.get(0);
        List<List<Object>> operatorInfos = repository3.findStationsOperatorInfo((Integer) basicInfo.get(2));
        List<Object> operatorInfo = new ArrayList();
        if (operatorInfos.size()!=0) {
          operatorInfo = operatorInfos.get(0);
        }
        
        List<List<Object>> addressInfos = repository3.findStationsAddressInfo((Integer) basicInfo.get(3));
        List<Object> addressInfo = new ArrayList();
        if  (addressInfos.size()!=0) {
          addressInfo = addressInfos.get(0);
        }

        List<Integer> spots = repository3.findStationSpotsFromStation(i);
        
        ObjectNode answer = mapper.createObjectNode();
        answer.put("Id", i);
        if (basicInfo.get(3)!=null && addressInfos.size()!=0) {
          answer.put("Title", (String) addressInfo.get(14));
        }
        answer.put("UUID", (String) basicInfo.get(0));
        if (basicInfo.get(1)!=null) {
          answer.put("Current Provider's Name", (String) repository3.findCurrentProviderName((Integer) basicInfo.get(1)));
        }
        else {
          answer.put("Current Provider", "Unknown");
        }

        answer.put("Rating", (Double) basicInfo.get(9));
        answer.put("Cost Per kWh", (Double) basicInfo.get(10));
        answer.put("Comments", (String) basicInfo.get(5));
        answer.put("Date Created", basicInfo.get(6)!=null ? basicInfo.get(6).toString() : null);
        if (basicInfo.get(7)!=null) {
          answer.put("Status Type", (String) repository3.findStatusTypeTitle((Integer) basicInfo.get(7)));
        }
        else {
          answer.put("Status Type", "Unknown");
        }
        if (basicInfo.get(8)!=null) {
          answer.put("Submission Status", (String) repository3.findSubmissionStatusTitle((Integer) basicInfo.get(8)));
        }
        else {
          answer.put("Submission Status", "Unknown");
        }

        if (basicInfo.get(4)!=null) {
          answer.put("Usage Type", (String) repository3.findUsageTypeTitle((Integer) basicInfo.get(4))); 
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
            List<List<Object>> countryInfos = repository3.findStationsCountryInfo((Integer) addressInfo.get(13));
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
  @GetMapping("/evcharge/api/stationowners/{id}/mystatistics")
  JsonNode myStatistics(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    List<Integer> allStationOwners = repository3.findAllStationOwnersIds();
    if (!allStationOwners.contains(id)) {
      throw new BadRequestException();
    }
    else {
      List<List<Object>> statistics = repository3.findSessionsByStationMonth(id);
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ArrayNode statList = mapper.createArrayNode();      
      if (statistics.size()==0) {
        throw new NoDataFoundException();
      }
      for (List<Object> stat : statistics) {
        ObjectNode curr = mapper.createObjectNode();
        curr.put("Year", stat.get(1)!=null ? stat.get(1).toString() : null);
        curr.put("Month", stat.get(0)!=null ? stat.get(0).toString() : null);
        curr.put("Sessions", (Long) stat.get(2));
        curr.put("Users", (Long) stat.get(3));
        curr.put("Earnings", Math.round(((Double)stat.get(4))*100d)/100d);
        curr.put("kWh Delivered", Math.round(((Double)stat.get(5))*100d)/100d);
        statList.add(curr);
      }
      answer.put("Summary", statList);
      String ugly = answer.toString();
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
  List<StationOwner> all(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository3.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/stationownersmod")
  StationOwner newStationOwner(@RequestBody StationOwner newStationOwner, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    newStationOwner.setApiKey(generateToken());
    return repository3.save(newStationOwner);
  }

  
  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/stationowners/{id}")
  StationOwner one(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository3.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }
  

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/stationownersmod/{id}")
  StationOwner replaceStationOwner(@RequestBody StationOwner newStationOwner, @PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository3.findById(id)
      .map(stationOwner -> {
        stationOwner.setUsername(newStationOwner.getUsername());
        stationOwner.setPassword(newStationOwner.getPassword());
        stationOwner.setEmailAddr(newStationOwner.getEmailAddr());
        stationOwner.setFirstName(newStationOwner.getFirstName());
        stationOwner.setLastName(newStationOwner.getLastName());
        stationOwner.setAddress(newStationOwner.getAddress());
        stationOwner.setDateOfBirth(newStationOwner.getDateOfBirth());
        stationOwner.setApiKey(newStationOwner.getApiKey());
        return repository3.save(stationOwner);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/stationownersmodnopass/{id}")
  StationOwner replaceStationOwnerNoPass(@RequestBody StationOwner newStationOwner, @PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository3.findById(id)
      .map(stationOwner -> {
        stationOwner.setUsername(newStationOwner.getUsername());
        stationOwner.setEmailAddr(newStationOwner.getEmailAddr());
        stationOwner.setFirstName(newStationOwner.getFirstName());
        stationOwner.setLastName(newStationOwner.getLastName());
        stationOwner.setAddress(newStationOwner.getAddress());
        stationOwner.setDateOfBirth(newStationOwner.getDateOfBirth());
        stationOwner.setApiKey(newStationOwner.getApiKey());
        return repository3.save(stationOwner);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/stationownersmod/{id}")
  void deleteStationOwner(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository3.deleteById(id);
  }
}
