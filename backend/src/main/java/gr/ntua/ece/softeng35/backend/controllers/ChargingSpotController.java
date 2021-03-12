package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;
import org.springframework.http.*;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.node.*;
import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ChargingSpot;
import gr.ntua.ece.softeng35.backend.models.ChargingSpotRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.math.*;
import java.lang.*;
import org.json.*;

@RestController
class ChargingSpotController {
  private final ChargingSpotRepository repository;
  private final UserRepository repository2;

  ChargingSpotController(ChargingSpotRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping(value={"/evcharge/api/{apikey}/chargingspots",
                     "/evcharge/api/{apikey}/chargingspots/{id}"})
  JsonNode spot(@PathVariable Optional<Integer> id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }

    if (!id.isPresent()) {
      List<Integer> stationspots = repository.findAllStationSpotsIds();
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode finalAnswer = mapper.createObjectNode();
      ArrayNode answerList = mapper.createArrayNode();
      for (Integer i : stationspots) {
        Integer stationId = repository.findStationFromTogether(i);
        Integer spotId = repository.findSpotFromTogether(i);
        String stationTitle="";
        if (stationId!=null) {
          Integer stationAddress = repository.findStationAddress(stationId);
          if (stationAddress!=null) {
            stationTitle = repository.findStationAddressTitle(stationAddress);
          }
          else {
            stationTitle = "Unknown";
          }
        }
        if (spotId==null) {
          continue;
        }
        List<List<Object>> Infos = repository.findSpotInfo(spotId);
        if (Infos.size()==0) {
          continue;
        }
        List<Object> info = Infos.get(0);
        ObjectNode answer = mapper.createObjectNode();
        if (stationId!=null) {
          answer.put("Station Id", stationId);
        }
        else {
          answer.put("Station", "Unknown");
        }
        answer.put("Spot id", i);
        if (stationId!=null) {
          answer.put("Station Title", stationTitle);
        }
        Integer connectionTypeId = (Integer) info.get(0);
        if (connectionTypeId!=null) {
          answer.put("Connection Type", (String) repository.findConnectionTypeTitle(connectionTypeId));
        }
        else {
          answer.put("Connection Type", "Unknown");
        }
        Integer levelId = (Integer) info.get(1);
        if (levelId!=null) {
          List<List<Object>> levelInfos = repository.findLevelInfo(levelId);
          List<Object> levelInfo = levelInfos.get(0);
          answer.put("Level", (String) levelInfo.get(0));
          answer.put("Level Comments", (String) levelInfo.get(1));
          answer.put("Fast Charge", (Boolean) levelInfo.get(2));
        }
        else {
          answer.put("Level", "Unknown");
        }
        Integer currentTypeId = (Integer) info.get(2);
        if (currentTypeId!=null) {
          answer.put("Current Type", (String) repository.findCurrentTypeTitle(currentTypeId));
        }
        else {
          answer.put("Current Type", "Unknown");
        }
        answer.put("Amps", (Double) info.get(3));
        answer.put("Voltage", (Double) info.get(4));
        answer.put("Power (kW)", (Double) info.get(5));
        answer.put("Comments", (String) info.get(6));
        answerList.add(answer);
      }
      finalAnswer.put("Spots", answerList);   
      String ugly = finalAnswer.toString();
      try {
        JsonNode node = mapper.readTree(ugly);
        return node;
      }
      catch (Exception e) {
        JsonNode node = null;
        return node;
      }
    }

    else {
      List<Integer> stationspots = repository.findAllStationSpotsIds();
      if (!stationspots.contains(id.get())) {
        throw new BadRequestException();
      }
      Integer stationId = repository.findStationFromTogether(id.get());
      Integer spotId = repository.findSpotFromTogether(id.get());
      String stationTitle="";
      if (stationId!=null) {
        Integer stationAddress = repository.findStationAddress(stationId);
        if (stationAddress!=null) {
          stationTitle = repository.findStationAddressTitle(stationAddress);
        }
        else {
          stationTitle = "Unknown";
        }
      }
      if (spotId==null) {
        throw new BadRequestException();
      }
      List<List<Object>> Infos = repository.findSpotInfo(spotId);
      if (Infos.size()==0) {
        throw new NoDataFoundException();
      }
      List<Object> info = Infos.get(0);
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      if (stationId!=null) {
        answer.put("Station Id", stationId);
      }
      else {
        answer.put("Station", "Unknown");
      }
      answer.put("Spot id", id.get());
      if (stationId!=null) {
        answer.put("Station Title", stationTitle);
      }
      Integer connectionTypeId = (Integer) info.get(0);
      if (connectionTypeId!=null) {
        answer.put("Connection Type", (String) repository.findConnectionTypeTitle(connectionTypeId));
      }
      else {
        answer.put("Connection Type", "Unknown");
      }
      Integer levelId = (Integer) info.get(1);
      if (levelId!=null) {
        List<List<Object>> levelInfos = repository.findLevelInfo(levelId);
        List<Object> levelInfo = levelInfos.get(0);
        answer.put("Level", (String) levelInfo.get(0));
        answer.put("Level Comments", (String) levelInfo.get(1));
        answer.put("Fast Charge", (Boolean) levelInfo.get(2));
      }
      else {
        answer.put("Level", "Unknown");
      }
      Integer currentTypeId = (Integer) info.get(2);
      if (currentTypeId!=null) {
        answer.put("Current Type", (String) repository.findCurrentTypeTitle(currentTypeId));
      }
      else {
        answer.put("Current Type", "Unknown");
      }
      answer.put("Amps", (Double) info.get(3));
      answer.put("Voltage", (Double) info.get(4));
      answer.put("Power (kW)", (Double) info.get(5));
      answer.put("Comments", (String) info.get(6));

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

  /*
  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingspots")
  List<ChargingSpot> all() {
    return repository.findAll();
  }*/

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/chargingspotsmod")
  ChargingSpot newChargingSpot(@RequestBody ChargingSpot newChargingSpot,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newChargingSpot);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/chargingspotsdb/{id}")
  ChargingSpot one(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/admin/chargingspotsmod/{id}")
  ChargingSpot replaceChargingSpot(@RequestBody ChargingSpot newChargingSpot, @PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(chargingSpot -> {
        chargingSpot.setConnectionType(newChargingSpot.getConnectionType());
        chargingSpot.setLevel(newChargingSpot.getLevel());
        chargingSpot.setAmps(newChargingSpot.getAmps());
        chargingSpot.setVoltage(newChargingSpot.getVoltage());
        chargingSpot.setPowerkw(newChargingSpot.getPowerkw());
        chargingSpot.setCurrentType(newChargingSpot.getCurrentType());
        chargingSpot.setComments(newChargingSpot.getComments());
        return repository.save(chargingSpot);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/admin/chargingspotsmod/{id}")
  void deleteChargingSpot(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
