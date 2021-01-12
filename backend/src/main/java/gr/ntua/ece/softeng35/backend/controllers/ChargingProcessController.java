package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;
import org.springframework.http.*;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.node.*;

import gr.ntua.ece.softeng35.backend.models.ChargingProcess;
import gr.ntua.ece.softeng35.backend.models.ChargingProcessRepository;
import gr.ntua.ece.softeng35.backend.models.Operator;
import gr.ntua.ece.softeng35.backend.models.ChargingStation;
import gr.ntua.ece.softeng35.backend.models.ChargingStationRepository;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.math.*;
import java.lang.*;


@RestController
class ChargingProcessController {

  private final ChargingProcessRepository repository;
  ChargingProcessController(ChargingProcessRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingprocesses")
  List<ChargingProcess> all() {
    return repository.findAll();
  }


  //public ResponseEntity noData() {
  //  return new ResponseEntity("No data", HttpStatus.PAYMENT_REQUIRED);
  //}


  /* Returns a list like : [ Station Id, Spot Id, Operator Title, (Browser) Request Time, 
                             Start Date (given from user), End Date (also from user),
                             Number of Processes of spot, 
                             [  [session_index, session_id, connection_time, disconnect_time, program, kWh delivered, payment_way, vehicle_type],
                                [                 ...                  ],
                                [                 ...                  ]  ]
                           ] 
  */

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping(value = {"/evcharge/api/SessionsPerPoint", "/evcharge/api/SessionsPerPoint/{stationSpotId}",
                       "/evcharge/api/SessionsPerPoint/{stationSpotId}/{startDate}",
                       "/evcharge/api/SessionsPerPoint/{stationSpotId}/{startDate}/{endDate}"})
  JsonNode spotProcess(@PathVariable Optional<Integer> stationSpotId,
                           @PathVariable Optional<String> startDate,
                           @PathVariable Optional<String> endDate) {

    
    if (!stationSpotId.isPresent()) {
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode allStations = mapper.createObjectNode();
      ArrayNode allData = mapper.createArrayNode();

      for (Integer i=1; i<7663; i++) {
        ObjectNode answer = mapper.createObjectNode();
        ObjectNode allSessions = mapper.createObjectNode();
        ArrayNode ChargingSessionsList = mapper.createArrayNode();
  
        Integer stationId =  (Integer) repository.findStationFromTogether(i);
        if (stationId==null) {
          continue; 
        }
        Integer spotIdReal =  (Integer) repository.findSpotFromTogether(i);
        Integer spotId =  i;
        List<List<Object>> processes = repository.findBySpotOnly(stationId, spotIdReal);
        if (processes.size()==0) {
          continue;
        }
        String Operator = (String) repository.findOperator(stationId);
        Object CurrTime = repository.findTime(stationId);
        List<Object> res = new ArrayList();
        Integer counter = 1;
        for (List<Object> nested : processes) {
          nested.add(0, counter);
          counter++;
        }
        answer.put("StationId", stationId);
        answer.put("SpotId", spotId);
        answer.put("Operator", Operator);
        answer.put("RequestTime", CurrTime.toString());
        answer.put("Processes Number", processes.size());
        for (List<Object> nested : processes) {
          ObjectNode session = mapper.createObjectNode();
          session.put("Index", (Integer) nested.get(0));
          session.put("SessionId", (Integer) nested.get(1));
          session.put("StartedOn", nested.get(2).toString());
          session.put("ChargedOn", nested.get(3).toString());
          session.put("FinishedOn", nested.get(4).toString());
          session.put("Protocol", (String) nested.get(5));
          session.put("kWhDelivered", (Double) nested.get(6));
          session.put("PaymentWay", (String) nested.get(7));
          session.put("VehicleType", (String) nested.get(8));
          ChargingSessionsList.add(session);
        }
  
        answer.put("ChargingSessionsList", ChargingSessionsList);
        
        allData.add(answer); 
      }
      allStations.put("ChargingStationsSessions", allData);
      String ugly = allStations.toString();
      try {
        JsonNode node = mapper.readTree(ugly);
        return node;
      }
      catch (Exception e) {
        JsonNode node = null;
        return node;
      }  
    } 
  
    else if (stationSpotId.isPresent() && !startDate.isPresent() && !endDate.isPresent()) {
      if (stationSpotId.get()<1 || stationSpotId.get()>42979) {
        throw new BadRequestException();
      }

      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ObjectNode allSessions = mapper.createObjectNode();
      ArrayNode ChargingSessionsList = mapper.createArrayNode();

      Integer stationId =  (Integer) repository.findStationFromTogether(stationSpotId.get());
      if (stationId==null) {
        throw new BadRequestException(); 
      }
      Integer spotIdReal =  (Integer) repository.findSpotFromTogether(stationSpotId.get());
      Integer spotId =  stationSpotId.get();
      List<List<Object>> processes = repository.findBySpotOnly(stationId, spotIdReal);
      String Operator = (String) repository.findOperator(stationId);
      Object CurrTime = repository.findTime(stationId);
      List<Object> res = new ArrayList();
      Integer counter = 1;
      for (List<Object> nested : processes) {
        nested.add(0, counter);
        counter++;
      }
      answer.put("StationId", stationId);
      answer.put("SpotId", spotId);
      answer.put("Operator", Operator);
      answer.put("RequestTime", CurrTime.toString());
      answer.put("Processes Number", processes.size());
      for (List<Object> nested : processes) {
        ObjectNode session = mapper.createObjectNode();
        session.put("Index", (Integer) nested.get(0));
        session.put("SessionId", (Integer) nested.get(1));
        session.put("StartedOn", nested.get(2).toString());
        session.put("ChargedOn", nested.get(3).toString());
        session.put("FinishedOn", nested.get(4).toString());
        session.put("Protocol", (String) nested.get(5));
        session.put("kWhDelivered", (Double) nested.get(6));
        session.put("PaymentWay", (String) nested.get(7));
        session.put("VehicleType", (String) nested.get(8));
        ChargingSessionsList.add(session);
      }

      answer.put("ChargingSessionsList", ChargingSessionsList);
      
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
   
    else if (stationSpotId.isPresent() && startDate.isPresent() && !endDate.isPresent()) {
      if (stationSpotId.get()<1 || stationSpotId.get()>42979) {
        throw new BadRequestException();
      }
      Date date1;
      try {  
        date1 = java.sql.Date.valueOf(LocalDate.parse(startDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
      }
      catch (Exception e) {
        throw new BadRequestException();
      }

      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ObjectNode allSessions = mapper.createObjectNode();
      ArrayNode ChargingSessionsList = mapper.createArrayNode();
      
      Integer stationId =  (Integer) repository.findStationFromTogether(stationSpotId.get());
      if (stationId==null) {
        throw new BadRequestException();
      }
      Integer spotIdReal =  (Integer) repository.findSpotFromTogether(stationSpotId.get());
      Integer spotId =  stationSpotId.get();
      List<List<Object>> processes = repository.findBySpotAndStartDate(stationId, spotIdReal, date1);
      String Operator = (String) repository.findOperator(stationId);
      Object CurrTime = repository.findTime(stationId);
      List<Object> res = new ArrayList();
      Integer counter = 1;
      for (List<Object> nested : processes) {
        nested.add(0, counter);
        counter++;
      }
      answer.put("StationId", stationId);
      answer.put("SpotId", spotId);
      answer.put("Operator", Operator);
      answer.put("RequestTime", CurrTime.toString());
      answer.put("StartDate", date1.toString());
      answer.put("Processes Number", processes.size());
      for (List<Object> nested : processes) {
        ObjectNode session = mapper.createObjectNode();
        session.put("Index", (Integer) nested.get(0));
        session.put("SessionId", (Integer) nested.get(1));
        session.put("StartedOn", nested.get(2).toString());
        session.put("ChargedOn", nested.get(3).toString());
        session.put("FinishedOn", nested.get(4).toString());
        session.put("Protocol", (String) nested.get(5));
        session.put("kWhDelivered", (Double) nested.get(6));
        session.put("PaymentWay", (String) nested.get(7));
        session.put("VehicleType", (String) nested.get(8));
        ChargingSessionsList.add(session);
      }
      answer.put("ChargingSessionsList", ChargingSessionsList);
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
    
    else {
      if (stationSpotId.get()<1 || stationSpotId.get()>42979) {
        throw new BadRequestException();
      }
      Date date1, date2;
      try {
        date1 = java.sql.Date.valueOf(LocalDate.parse(startDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
        date2 = java.sql.Date.valueOf(LocalDate.parse(endDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
      }
      catch (Exception e) {
        throw new BadRequestException();
      }

      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ObjectNode allSessions = mapper.createObjectNode();
      ArrayNode ChargingSessionsList = mapper.createArrayNode();

      Integer stationId =  (Integer) repository.findStationFromTogether(stationSpotId.get());
      if (stationId==null) {
        throw new BadRequestException();
      }
      Integer spotIdReal =  (Integer) repository.findSpotFromTogether(stationSpotId.get());
      Integer spotId =  stationSpotId.get();
      List<List<Object>> processes = repository.findBySpotAndBothDates(stationId, spotIdReal, date1, date2);
      String Operator = (String) repository.findOperator(stationId);
      Object CurrTime = repository.findTime(stationId);
      List<Object> res = new ArrayList();
      Integer counter = 1;
      for (List<Object> nested : processes) {
        nested.add(0, counter);
        counter++;
      }
      answer.put("StationId", stationId);
      answer.put("SpotId", spotId);
      answer.put("Operator", Operator);
      answer.put("RequestTime", CurrTime.toString());
      answer.put("StartDate", date1.toString());
      answer.put("EndDate", date2.toString());
      answer.put("Processes Number", processes.size());
      for (List<Object> nested : processes) {
        ObjectNode session = mapper.createObjectNode();
        session.put("Index", (Integer) nested.get(0));
        session.put("SessionId", (Integer) nested.get(1));
        session.put("StartedOn", nested.get(2).toString());
        session.put("ChargedOn", nested.get(3).toString());
        session.put("FinishedOn", nested.get(4).toString());
        session.put("Protocol", (String) nested.get(5));
        session.put("kWhDelivered", (Double) nested.get(6));
        session.put("PaymentWay", (String) nested.get(7));
        session.put("VehicleType", (String) nested.get(8));
        ChargingSessionsList.add(session);
      }

      answer.put("ChargingSessionsList", ChargingSessionsList);
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
  

  /* Returns a list like : [ Station Id, Operator Title, (Browser) Request Time, 
                             Start Date (given from user), End Date (also from user),
                             Total kWh Dekivered from the Station, Total Processes,
                             Number of Distinct Spots used, 
                             [  [spot_id, processes here, kWh delivered],
                                [                 ...                  ],
                                [                 ...                  ]  ]
                           ] 
  */

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping(value = {"/evcharge/api/SessionsPerStation","/evcharge/api/SessionsPerStation/{stationId}",
                       "/evcharge/api/SessionsPerStation/{stationId}/{startDate}/{endDate}",
                       "/evcharge/api/SessionsPerStation/{stationId}/{startDate}",})
  JsonNode stationProcess(@PathVariable Optional<Integer> stationId,
                                       @PathVariable Optional<String> startDate, 
                                       @PathVariable Optional<String> endDate) {

    if (!stationId.isPresent()) {

      ObjectMapper mapper = new ObjectMapper();
      ObjectNode allStations = mapper.createObjectNode();
      ArrayNode allData = mapper.createArrayNode();
      
      

      for (Integer i=1; i<7663; i++) {
        ObjectNode answer = mapper.createObjectNode();
        ObjectNode allSessions = mapper.createObjectNode();
        ArrayNode ChargingSessionsList = mapper.createArrayNode();
              
        List<List<Object>> temp = repository.findByStation(i);
        Boolean flag = false;
  
        if (temp.get(0).get(0)==null) {
          continue;
        }
        /* retrieve sessions groupped by station-spot */
        List<List<Object>> PointsSessions = repository.findByStationGroupPoints(i);
        
        Double totalkWh = 0.0;
        Long sessions = 0L;
        
        /* total Station kWh compute */
        for (List<Object> nested : PointsSessions) {
          totalkWh = totalkWh + (Double) nested.get(2);
        }
        /* total Station Sessions compute */
        for (List<Object> nested : PointsSessions) {
          sessions = sessions + (Long) nested.get(1);
        }
  
        // res.add(temp);
        if (flag==true) {
          answer.put("StationId", (Integer) temp.get(0).get(0));  // station id
          answer.put("Operator", (String) temp.get(0).get(1));  // operator title
          answer.put("RequestTime", temp.get(0).get(2).toString());  // current time
        }
        else {
          answer.put("StationId", (Integer) temp.get(0).get(1));  // station id
          answer.put("Operator", (String) temp.get(0).get(2));  // operator title
          answer.put("RequestTime", temp.get(0).get(3).toString());  // current time
        }
        answer.put("TotalkWhDelivered", (Double) totalkWh);            // total kWh
        answer.put("SessionsNumber", (Long) sessions);         // sessions counter
        answer.put("DistinctSpotsUsed", (Long) temp.get(0).get(4));  // number of distinct spots used
        
        
        for (List<Object> nested : PointsSessions) {
          Integer spotid = (Integer) nested.get(0);
          Integer stationid = i;
          nested.remove(0);
          Integer stationspotid = repository.findStationSpotId(stationid, spotid);
          nested.add(0, stationspotid);
        }
  
        for (List<Object> nested : PointsSessions) {
          ObjectNode session = mapper.createObjectNode();
          session.put("PointId", (Integer) nested.get(0));
          session.put("PointSessions", (Long) nested.get(1));
          session.put("PointEnergyDelivered", (Double) nested.get(2));
          ChargingSessionsList.add(session);
        }
  
        answer.put("SessionsSummaryList", ChargingSessionsList);  
      
        allData.add(answer);
      }  
      allStations.put("ChargingStationsSessions", allData);
      String ugly = allStations.toString();
      try {
        JsonNode node = mapper.readTree(ugly);
        return node;
      }
      catch (Exception e) {
        JsonNode node = null;
        return node;
      }
    }     
                                 
    else if (stationId.isPresent() && !startDate.isPresent() && !endDate.isPresent()) {
      if (stationId.get()<1 || stationId.get()>7662) {
        throw new BadRequestException();
      }
      
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ObjectNode allSessions = mapper.createObjectNode();
      ArrayNode ChargingSessionsList = mapper.createArrayNode();
            
      List<List<Object>> temp = repository.findByStation(stationId.get());
      List<Object> res = new ArrayList();
      Boolean flag = false;

      if (temp.get(0).get(0)==null) {
        flag = true;
        temp = repository.findByStation2(stationId.get());
        /*  different for many stations
        
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
        */
        throw new NoDataFoundException();
      }
      /* retrieve sessions groupped by station-spot */
      List<List<Object>> PointsSessions = repository.findByStationGroupPoints(stationId.get());
      
      Double totalkWh = 0.0;
      Long sessions = 0L;
      
      /* total Station kWh compute */
      for (List<Object> nested : PointsSessions) {
        totalkWh = totalkWh + (Double) nested.get(2);
      }
      /* total Station Sessions compute */
      for (List<Object> nested : PointsSessions) {
        sessions = sessions + (Long) nested.get(1);
      }

      // res.add(temp);
      if (flag==true) {
        answer.put("StationId", (Integer) temp.get(0).get(0));  // station id
        answer.put("Operator", (String) temp.get(0).get(1));  // operator title
        answer.put("RequestTime", temp.get(0).get(2).toString());  // current time
      }
      else {
        answer.put("StationId", (Integer) temp.get(0).get(1));  // station id
        answer.put("Operator", (String) temp.get(0).get(2));  // operator title
        answer.put("RequestTime", temp.get(0).get(3).toString());  // current time
      }
      answer.put("TotalkWhDelivered", (Double) totalkWh);            // total kWh
      answer.put("SessionsNumber", (Long) sessions);         // sessions counter
      answer.put("DistinctSpotsUsed", (Long) temp.get(0).get(4));  // number of distinct spots used
      
      
      for (List<Object> nested : PointsSessions) {
        Integer spotid = (Integer) nested.get(0);
        Integer stationid = (Integer) stationId.get();
        nested.remove(0);
        Integer stationspotid = repository.findStationSpotId(stationid, spotid);
        nested.add(0, stationspotid);
      }

      for (List<Object> nested : PointsSessions) {
        ObjectNode session = mapper.createObjectNode();
        session.put("PointId", (Integer) nested.get(0));
        session.put("PointSessions", (Long) nested.get(1));
        session.put("PointEnergyDelivered", (Double) nested.get(2));
        ChargingSessionsList.add(session);
      }

      answer.put("SessionsSummaryList", ChargingSessionsList);  
    
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

    else if (stationId.isPresent() && startDate.isPresent() && !endDate.isPresent()) {
      if (stationId.get()<1 || stationId.get()>7662) {
        throw new BadRequestException();
      }
      Date date1;
      try {
        date1 = java.sql.Date.valueOf(LocalDate.parse(startDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
      }
      catch (Exception e) {
        throw new BadRequestException();
      }

      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ObjectNode allSessions = mapper.createObjectNode();
      ArrayNode ChargingSessionsList = mapper.createArrayNode();

      List<List<Object>> temp = repository.findByStationAndStartDate(stationId.get(), date1);
      List<Object> res = new ArrayList();
      Boolean flag = false;

      if (temp.get(0).get(0)==null) {
        flag = true;
        temp = repository.findByStation2(stationId.get());
        /*  different for many stations
        
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
        */
        throw new NoDataFoundException();
      }
      /* retrieve sessions groupped by station-spot */
      List<List<Object>> PointsSessions = repository.findByStationStartDateGroupPoints(stationId.get(), date1);

      
      Double totalkWh = 0.0;
      Long sessions = 0L;  
      
      /* total Station kWh compute */
      for (List<Object> nested : PointsSessions) {
        totalkWh = totalkWh + (Double) nested.get(2);
      }
      /* total Station Sessions compute */
      for (List<Object> nested : PointsSessions) {
        sessions = sessions + (Long) nested.get(1);
      }

              // res.add(temp);
      if (flag==true) {
        answer.put("StationId", (Integer) temp.get(0).get(0));  // station id
        answer.put("Operator", (String) temp.get(0).get(1));  // operator title
        answer.put("RequestTime", temp.get(0).get(2).toString());  // current time
      }
      else {
        answer.put("StationId", (Integer) temp.get(0).get(1));  // station id
        answer.put("Operator", (String) temp.get(0).get(2));  // operator title
        answer.put("RequestTime", temp.get(0).get(3).toString());  // current time
      }
      answer.put("StartDate", date1.toString());            // total kWh
      answer.put("TotalkWhDelivered", (Double) totalkWh);            // total kWh
      answer.put("SessionsNumber", (Long) sessions);         // sessions counter
      answer.put("DistinctSpotsUsed", (Long) temp.get(0).get(4));  // number of distinct spots used
       
        
      for (List<Object> nested : PointsSessions) {
        Integer spotid = (Integer) nested.get(0);
        Integer stationid = (Integer) stationId.get();
        nested.remove(0);
        Integer stationspotid = repository.findStationSpotId(stationid, spotid);
        nested.add(0, stationspotid);
      }

      for (List<Object> nested : PointsSessions) {
        ObjectNode session = mapper.createObjectNode();
        session.put("PointId", (Integer) nested.get(0));
        session.put("PointSessions", (Long) nested.get(1));
        session.put("PointEnergyDelivered", (Double) nested.get(2));
        ChargingSessionsList.add(session);
      }

      answer.put("SessionsSummaryList", ChargingSessionsList);  
    
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

    else {
      if (stationId.get()<1 || stationId.get()>7662) {
        throw new BadRequestException();
      }
      Date date1, date2;
      try {
        date1 = java.sql.Date.valueOf(LocalDate.parse(startDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
        date2 = java.sql.Date.valueOf(LocalDate.parse(endDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
      }
      catch (Exception e) {
        throw new BadRequestException();
      }

      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ObjectNode allSessions = mapper.createObjectNode();
      ArrayNode ChargingSessionsList = mapper.createArrayNode();

      List<List<Object>> temp = repository.findByStationAndTimestamp(stationId.get(), date1, date2);
      List<Object> res = new ArrayList();
      Boolean flag = false;
      
      if (temp.get(0).get(0)==null) {
        flag = true;
        temp = repository.findByStation2(stationId.get());
        /*  different for many stations
        
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
        */
        throw new NoDataFoundException();
      }
      
      /* retrieve sessions groupped by station-spot */
      List<List<Object>> PointsSessions = repository.findByStationBothDatesGroupPoints(stationId.get(), date1, date2);

      Double totalkWh = 0.0;
      Long sessions = 0L;
      
      /* total Station kWh compute */
      for (List<Object> nested : PointsSessions) {
        totalkWh = totalkWh + (Double) nested.get(2);
      }
      /* total Station Sessions compute */
      for (List<Object> nested : PointsSessions) {
        sessions = sessions + (Long) nested.get(1);
      }

      // res.add(temp);
      if (flag==true) {
        answer.put("StationId", (Integer) temp.get(0).get(0));  // station id
        answer.put("Operator", (String) temp.get(0).get(1));  // operator title
        answer.put("RequestTime", temp.get(0).get(2).toString());  // current time
      }
      else {
        answer.put("StationId", (Integer) temp.get(0).get(1));  // station id
        answer.put("Operator", (String) temp.get(0).get(2));  // operator title
        answer.put("RequestTime", temp.get(0).get(3).toString());  // current time
      }
      answer.put("StartDate", date1.toString());            // total kWh
      answer.put("EndDate", date2.toString());            // total kWh
      answer.put("TotalkWhDelivered", (Double) totalkWh);            // total kWh
      answer.put("SessionsNumber", (Long) sessions);         // sessions counter
      answer.put("DistinctSpotsUsed", (Long) temp.get(0).get(4));  // number of distinct spots used
      
      for (List<Object> nested : PointsSessions) {
        Integer spotid = (Integer) nested.get(0);
        Integer stationid = (Integer) stationId.get();
        nested.remove(0);
        Integer stationspotid = repository.findStationSpotId(stationid, spotid);
        nested.add(0, stationspotid);
      }

      for (List<Object> nested : PointsSessions) {
        ObjectNode session = mapper.createObjectNode();
        session.put("PointId", (Integer) nested.get(0));
        session.put("PointSessions", (Long) nested.get(1));
        session.put("PointEnergyDelivered", (Double) nested.get(2));
        ChargingSessionsList.add(session);
      }

      answer.put("SessionsSummaryList", ChargingSessionsList);  
    
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
  @PostMapping("/evcharge/api/chargingprocesses")
  ChargingProcess newChargingProcess(@RequestBody ChargingProcess newChargingProcess) {
    return repository.save(newChargingProcess);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingprocesses/{id}")
  ChargingProcess one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new ChargingProcessNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/chargingprocesses/{id}")
  ChargingProcess replaceChargingProcess(@RequestBody ChargingProcess newChargingProcess, @PathVariable Integer id) {
    return repository.findById(id)
      .map(chargingProcess -> {
        chargingProcess.setUser(newChargingProcess.getUser());
        chargingProcess.setVehicle(newChargingProcess.getVehicle());
        chargingProcess.setChargingStation(newChargingProcess.getChargingStation());
        chargingProcess.setChargingSpot(newChargingProcess.getChargingSpot());
        chargingProcess.setConnectionTime(newChargingProcess.getConnectionTime());
        chargingProcess.setDisconnectTime(newChargingProcess.getDisconnectTime());
        chargingProcess.setDoneChargingTime(newChargingProcess.getDoneChargingTime());
        chargingProcess.setTimezone(newChargingProcess.getTimezone());
        chargingProcess.setKwhDelivered(newChargingProcess.getKwhDelivered());
        chargingProcess.setCost(newChargingProcess.getCost());
        chargingProcess.setPaymentWay(newChargingProcess.getPaymentWay());
        chargingProcess.setRating(newChargingProcess.getRating());
        chargingProcess.setChargingProgram(newChargingProcess.getChargingProgram());
        return repository.save(chargingProcess);
      })
      .orElseThrow(() -> new ChargingProcessNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/chargingprocesses/{id}")
  void deleteChargingProcess(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}