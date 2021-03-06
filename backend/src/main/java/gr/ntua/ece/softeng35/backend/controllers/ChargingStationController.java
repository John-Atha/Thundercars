package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;
import org.springframework.http.*;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.node.*;
import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ChargingStation;
import gr.ntua.ece.softeng35.backend.models.ChargingStationRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.math.*;
import java.lang.*;
import org.json.*;

@RestController
public class ChargingStationController {
  private final ChargingStationRepository repository;
  private final UserRepository repository2;
  private final AdminRepository repository1;
  private final StationOwnerRepository repository3;

  ChargingStationController(ChargingStationRepository repository, UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3) {
    this.repository = repository;
    this.repository1 = repository1;
    this.repository2 = repository2;
    this.repository3 = repository3;
}

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingstationsdb")
  List<ChargingStation> all( @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/chargingstationsmod")
  ChargingStation newChargingStation(@RequestBody ChargingStation newChargingStation, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newChargingStation);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingstationsdb/{id}")
  ChargingStation one(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins= "http://localhost:3000")
  @GetMapping(value = {"/evcharge/api/chargingstations",
                        "/evcharge/api/chargingstations/{id}"})
  JsonNode station(@PathVariable Optional<Integer> id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    if (!id.isPresent()) {
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode finalAnswer = mapper.createObjectNode();;
      ArrayNode all = mapper.createArrayNode();
      List<Integer> allStations = repository.findAllStationsIDs();
      
      for (Integer i : allStations) {
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

        List<List<Integer>> spots = repository.findStationSpotsFromStation(i);
        
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
        answer.put("Date Created", basicInfo.get(6)!=null ? basicInfo.get(6).toString() : null);
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
          for (List<Integer> spot : spots) {
            ObjectNode curr = mapper.createObjectNode();
            curr.put("Spot", spot.get(0));
            curr.put("Quantity", spot.get(1));
            curr.put("QuantityAvailable", spot.get(2));
            curr.put("QuantityOperational", spot.get(3));
            Integer realSpot = spot.get(4);
            if (realSpot!=null) {
              String category = repository.findConnCategory(realSpot);
              curr.put("Category", category);
            }
            else {
              String category = null;
              curr.put("Category", category);
            }
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
    
    else {
      List<Integer> allStationIDs = repository.findAllStationsIDs();
      if (!allStationIDs.contains(id.get())) {
        throw new BadRequestException();
      }

      else {
        List<List<Object>> basicInfos = repository.findStationsBasicInfo(id.get());
        if (basicInfos.size()==0) {
          throw new NoDataFoundException();
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

        List<List<Integer>> spots = repository.findStationSpotsFromStation(id.get());
        
        ObjectMapper mapper = new ObjectMapper();
        ObjectNode answer = mapper.createObjectNode();

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
        answer.put("Date Created", basicInfo.get(6)!=null ? basicInfo.get(6).toString() : null);
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
          for (List<Integer> spot : spots) {
            ObjectNode curr = mapper.createObjectNode();
            curr.put("Spot", spot.get(0));
            curr.put("Quantity", spot.get(1));
            curr.put("QuantityAvailable", spot.get(2));
            curr.put("QuantityOperational", spot.get(3));
            Integer realSpot = spot.get(4);
            if (realSpot!=null) {
              String category = repository.findConnCategory(realSpot);
              curr.put("Category", category);
            }
            else {
              String category = null;
              curr.put("Category", category);
            }
            SpotsList.add(curr);
          }
        }
        answer.put("Spots", SpotsList);



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



  }


  @CrossOrigin(origins= "http://localhost:3000")
  @GetMapping("evcharge/api/user/{userId}/statistics")
  JsonNode statistics(@PathVariable Integer userId, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    List<Integer> allUsers = repository.findAllUsers();
    if (!allUsers.contains(userId)) {
      throw new BadRequestException();
    }

    else {
      List<List<Object>> sessions = repository.findSessionsByUserMonth(userId);
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ArrayNode all = mapper.createArrayNode();
      if (sessions.size()==0) {
        throw new NoDataFoundException();
      }
      for (List<Object> nested : sessions) {
        ObjectNode curr = mapper.createObjectNode();
        curr.put("Year", (Integer) nested.get(1));
        curr.put("Month", (Integer) nested.get(0));
        curr.put("Sessions", (Long) nested.get(2));
        curr.put("Stations Visited", (Long) nested.get(3));
        curr.put("Total kWh Delivered", (Double) nested.get(4));
        curr.put("Total Cost", (Double) nested.get(5));
        all.add(curr);
      }
      answer.put("Summary", all);
      String ugly = answer.toString();
      try {
        JsonNode node = mapper.readTree(ugly);
        return node;
      }
      catch(Exception e) {
        JsonNode node = null;
        return null;
      }
      //return sessions;
    }
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/chargingstationsmod/{id}")
  ChargingStation replaceChargingStation(@RequestBody ChargingStation newChargingStation, @PathVariable Integer id,
                                        @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(chargingStation -> {
        chargingStation.setUuid(newChargingStation.getUuid());
        chargingStation.setOperator(newChargingStation.getOperator());
        chargingStation.setUsageType(newChargingStation.getUsageType());
        chargingStation.setAddress(newChargingStation.getAddress());
        chargingStation.setComments(newChargingStation.getComments());
        chargingStation.setDateLastConfirmed(newChargingStation.getDateLastConfirmed());
        chargingStation.setDateLastStatusUpdate(newChargingStation.getDateLastStatusUpdate());
        chargingStation.setDateCreated(newChargingStation.getDateCreated());
        chargingStation.setStatusType(newChargingStation.getStatusType());
        chargingStation.setSubmissionStatus(newChargingStation.getSubmissionStatus());
        chargingStation.setRating(newChargingStation.getRating());
        chargingStation.setCostPerKwh(newChargingStation.getCostPerKwh());
        return repository.save(chargingStation);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/chargingstationsmod/{id}")
  void deleteChargingStation(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}