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

  ChargingSpotController(ChargingSpotRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping(value={"/evcharge/api/chargingspots",
                     "/evcharge/api/chargingspots/{id}"})
  JsonNode spot(@PathVariable Optional<Integer> id) {
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
          stationTitle = repository.findStationTitle(stationId);
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
        answer.put("Amps", (Integer) info.get(3));
        answer.put("Voltage", (Integer) info.get(4));
        answer.put("Power (kW)", (Integer) info.get(5));
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
        stationTitle = repository.findStationTitle(stationId);
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
      answer.put("Amps", (Integer) info.get(3));
      answer.put("Voltage", (Integer) info.get(4));
      answer.put("Power (kW)", (Integer) info.get(5));
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
  @PostMapping("/evcharge/api/chargingspots")
  ChargingSpot newChargingSpot(@RequestBody ChargingSpot newChargingSpot) {
    return repository.save(newChargingSpot);
  }
/*
  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingspots/{id}")
  ChargingSpot one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new ChargingSpotNotFoundException(id));
  }
*/
  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/chargingspots/{id}")
  ChargingSpot replaceChargingSpot(@RequestBody ChargingSpot newChargingSpot, @PathVariable Integer id) {
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
      .orElseThrow(() -> new ChargingSpotNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/chargingspots/{id}")
  void deleteChargingSpot(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
