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

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.math.*;
import java.lang.*;
import org.json.*;

@RestController
class ChargingStationController {
  private final ChargingStationRepository repository;

  ChargingStationController(ChargingStationRepository repository) {
    this.repository = repository;
  }

  /*@CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingstations")
  List<ChargingStation> all() {
    return repository.findAll();
  }*/

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/chargingstations")
  ChargingStation newChargingStation(@RequestBody ChargingStation newChargingStation) {
    return repository.save(newChargingStation);
  }

  /*@CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingstations/{id}")
  ChargingStation one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new ChargingStationNotFoundException(id));
  }*/

  @CrossOrigin(origins= "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingstations/{id}")
  JsonNode station(@PathVariable Optional<Integer> id) {
    if (!id.isPresent()) {
      JsonNode node = null;
      return node;
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
        
        ObjectMapper mapper = new ObjectMapper();
        ObjectNode answer = mapper.createObjectNode();
        answer.put("UUID", (String) basicInfo.get(0));
       // if (basicInfo.get(1)!=null) {
          answer.put("Current Provider's Name", (String) basicInfo.get(1));
       // }
        //else {
        //  answer.put("Current Provider", "Unknown");
        //}

        answer.put("Rating", (Double) basicInfo.get(9));
        answer.put("Cost Per kWh", (Double) basicInfo.get(10));
        answer.put("Usage Type", (String) basicInfo.get(4));
        answer.put("Comments", (String) basicInfo.get(5));
        answer.put("Date Created", basicInfo.get(6).toString());
      //  if (basicInfo.get(7)!=null) {
          answer.put("Status Type", (String) basicInfo.get(7));
      //  }
      //  else {
      //    answer.put("Status Type", "Unknown");
      //  }
       // if (basicInfo.get(8)!=null) {
          answer.put("Submission Status", (String) basicInfo.get(8));
       // }
       // else {
       //   answer.put("Submission Status", "Unknown");
       // }

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
  @GetMapping("evcharge/api/user/{userId}/Statistics")
  JsonNode statistics(@PathVariable Integer userId) {
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
  @PutMapping("/evcharge/api/chargingstations/{id}")
  ChargingStation replaceChargingStation(@RequestBody ChargingStation newChargingStation, @PathVariable Integer id) {
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
      .orElseThrow(() -> new ChargingStationNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/chargingstations/{id}")
  void deleteChargingStation(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}