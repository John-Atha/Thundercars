package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

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
  List<Object> spotProcess(@PathVariable Optional<Integer> stationSpotId,
                           @PathVariable Optional<String> startDate,
                           @PathVariable Optional<String> endDate) {

    if (!stationSpotId.isPresent()) {
      List<Object> all = new ArrayList();

      for (Integer i=1; i<42979; i++) {
        Integer stationId =  (Integer) repository.findStationFromTogether(i);
        if (stationId==null) {
          List<Object> res = new ArrayList();   // BAD REQUEST
          all.add(res);
          continue;
        }
        Integer spotIdReal =  (Integer) repository.findSpotFromTogether(i);
        Integer spotId =  i;
        List<List<Object>> processes = repository.findBySpotOnly(stationId, spotIdReal);
        String Operator = (String) repository.findOperator(stationId);
        Object CurrTime = repository.findTime(stationId);
        List<Object> res = new ArrayList();
        Integer counter = 1;
        for (List<Object> nested : processes) {
          nested.add(0, counter);
          counter++;
        }
        res.add(stationId);               // station id
        res.add(spotId);                  // spot id
        res.add(Operator);                // operator id
        res.add(CurrTime);                // current time
        res.add(processes.size());        // number of processes
        res.add(processes);               // processes list
        all.add(res);
      }
      
      return all;
    }

    else if (stationSpotId.isPresent() && !startDate.isPresent() && !endDate.isPresent()) {
      Integer stationId =  (Integer) repository.findStationFromTogether(stationSpotId.get());
      if (stationId==null) {
        List<Object> res = new ArrayList();   // BAD REQUEST
        return res;
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
      res.add(stationId);               // station id
      res.add(spotId);                  // spot id
      res.add(Operator);                // operator id
      res.add(CurrTime);                // current time
      res.add(processes.size());        // number of processes
      res.add(processes);               // processes list
      return res;
    }

    else if (stationSpotId.isPresent() && startDate.isPresent() && !endDate.isPresent()) {
      Date date1 = java.sql.Date.valueOf(LocalDate.parse(startDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
      Integer stationId =  (Integer) repository.findStationFromTogether(stationSpotId.get());
      if (stationId==null) {
        List<Object> res = new ArrayList();   // BAD REQUEST
        return res;
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
      res.add(stationId);               // station id
      res.add(spotId);                  // spot id
      res.add(Operator);                // operator id
      res.add(CurrTime);                // current time
      res.add(date1.toString());        // start date
      res.add(processes.size());        // number of processes
      res.add(processes);               // processes list
      return res;
    }

    else {
      Date date1 = java.sql.Date.valueOf(LocalDate.parse(startDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
      Date date2 = java.sql.Date.valueOf(LocalDate.parse(endDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
      Integer stationId =  (Integer) repository.findStationFromTogether(stationSpotId.get());
      if (stationId==null) {
        List<Object> res = new ArrayList();   // BAD REQUEST
        return res;
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
      res.add(stationId);               // station id
      res.add(spotId);                  // spot id
      res.add(Operator);                // operator id
      res.add(CurrTime);                // current time
      res.add(date1.toString());        // start date
      res.add(processes.size());        // number of processes
      res.add(processes);               // processes list
      return res;
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
  List<Object> stationProcess(@PathVariable Optional<Integer> stationId,
                                       @PathVariable Optional<String> startDate, 
                                       @PathVariable Optional<String> endDate) {

    if (!stationId.isPresent()) {

      List<Object> all = new ArrayList();

      for (Integer i=1; i<7663; i++) {
        
        List<List<Object>> temp = repository.findByStation(i);
        List<Object> res = new ArrayList();
        Boolean flag = false;
        if (temp.get(0).get(0)==null) {
          flag = true;
          temp = repository.findByStation2(i);
          if (temp.size()==0) {
            all.add(res);           // WRONG STATION ID
            continue;
          }
          temp.get(0).add(3, 0);
          temp.get(0).add(3, 0);
          temp.get(0).add(3, 0);
        }
        /* retrieve sessions groupped by station-spot */
        List<List<Object>> PointsSessions = repository.findByStationGroupPoints(i);
        
        if (temp.size()>0) {
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

          /*for (List<Object> nested : PointsSessions) {
            String spotid = nested.get(0).toString();
            String stationid = stationId.get().toString();
            nested.remove(0);
            String stationspotid = stationid+"-"+spotid;
            nested.add(0, stationspotid);
          }
          */

          for (List<Object> nested : PointsSessions) {
            Integer spotid = (Integer) nested.get(0);
            Integer stationid = (Integer) i;
            nested.remove(0);
            Integer stationspotid = repository.findStationSpotId(stationid, spotid);
            nested.add(0, stationspotid);
          }

          if (flag==true) {
            res.add(temp.get(0).get(0));  // station id
            res.add(temp.get(0).get(1));  // operator title
            res.add(temp.get(0).get(2));  // current time
          }
          else {
            res.add(temp.get(0).get(1));  // station id
            res.add(temp.get(0).get(2));  // operator title
            res.add(temp.get(0).get(3));  // current time
          }
          res.add(totalkWh);            // total kWh
          res.add(sessions);         // sessions counter
          res.add(temp.get(0).get(5));  // number of distinct spots used
          res.add(PointsSessions);  
        } 
        
        all.add(res);
      }
      return all;
    }                                    

    else if (stationId.isPresent() && !startDate.isPresent() && !endDate.isPresent()) {
      List<List<Object>> temp = repository.findByStation(stationId.get());
      List<Object> res = new ArrayList();
      Boolean flag = false;
      if (temp.get(0).get(0)==null) {
        flag = true;
        temp = repository.findByStation2(stationId.get());
        if (temp.size()==0) {
          return res;           // WRONG STATION ID
        }
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
      }
      /* retrieve sessions groupped by station-spot */
      List<List<Object>> PointsSessions = repository.findByStationGroupPoints(stationId.get());
      
      if (temp.size()>0) {
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

        /*for (List<Object> nested : PointsSessions) {
          String spotid = nested.get(0).toString();
          String stationid = stationId.get().toString();
          nested.remove(0);
          String stationspotid = stationid+"-"+spotid;
          nested.add(0, stationspotid);
        }
        */

        for (List<Object> nested : PointsSessions) {
          Integer spotid = (Integer) nested.get(0);
          Integer stationid = (Integer) stationId.get();
          nested.remove(0);
          Integer stationspotid = repository.findStationSpotId(stationid, spotid);
          nested.add(0, stationspotid);
        }

        if (flag==true) {
          res.add(temp.get(0).get(0));  // station id
          res.add(temp.get(0).get(1));  // operator title
          res.add(temp.get(0).get(2));  // current time
        }
        else {
          res.add(temp.get(0).get(1));  // station id
          res.add(temp.get(0).get(2));  // operator title
          res.add(temp.get(0).get(3));  // current time
        }
        res.add(totalkWh);            // total kWh
        res.add(sessions);         // sessions counter
        res.add(temp.get(0).get(5));  // number of distinct spots used
        res.add(PointsSessions);  
      }    
      return res;
    }

    else if (stationId.isPresent() && startDate.isPresent() && !endDate.isPresent()) {

      Date date1 = java.sql.Date.valueOf(LocalDate.parse(startDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
      List<List<Object>> temp = repository.findByStationAndStartDate(stationId.get(), date1);
      List<Object> res = new ArrayList();
      Boolean flag = false;
      if (temp.get(0).get(0)==null) {
        flag = true;
        temp = repository.findByStation2(stationId.get());
        if (temp.size()==0) {
          return res;           // WRONG STATION ID
        }
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
      }
      /* retrieve sessions groupped by station-spot */
      List<List<Object>> PointsSessions = repository.findByStationStartDateGroupPoints(stationId.get(), date1);

      if (temp.size()>0) {
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

        /*for (List<Object> nested : PointsSessions) {
          String spotid = nested.get(0).toString();
          String stationid = stationId.get().toString();
          nested.remove(0);
          String stationspotid = stationid+"-"+spotid;
          nested.add(0, stationspotid);
        }
        */

        for (List<Object> nested : PointsSessions) {
          Integer spotid = (Integer) nested.get(0);
          Integer stationid = (Integer) stationId.get();
          nested.remove(0);
          Integer stationspotid = repository.findStationSpotId(stationid, spotid);
          nested.add(0, stationspotid);
        }

        if (flag==true) {
          res.add(temp.get(0).get(0));  // station id
          res.add(temp.get(0).get(1));  // operator title
          res.add(temp.get(0).get(2));  // current time
        }
        else {
          res.add(temp.get(0).get(1));  // station id
          res.add(temp.get(0).get(2));  // operator title
          res.add(temp.get(0).get(3));  // current time
        }
        res.add(date1.toString());    // start date
        res.add(totalkWh);            // total kWh
        res.add(sessions);         // sessions counter
        res.add(temp.get(0).get(5));  // number of distinct spots used
        res.add(PointsSessions);
      }
      return res;
    }

    else {
      Date date1 = java.sql.Date.valueOf(LocalDate.parse(startDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
      Date date2 = java.sql.Date.valueOf(LocalDate.parse(endDate.get(), DateTimeFormatter.BASIC_ISO_DATE));
      List<List<Object>> temp = repository.findByStationAndTimestamp(stationId.get(), date1, date2);
      List<Object> res = new ArrayList();
      Boolean flag = false;
      if (temp.get(0).get(0)==null) {
        flag = true;
        temp = repository.findByStation2(stationId.get());
        if (temp.size()==0) {
          return res;           // WRONG STATION ID
        }
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
        temp.get(0).add(3, 0);
      }
      
      /* retrieve sessions groupped by station-spot */
      List<List<Object>> PointsSessions = repository.findByStationBothDatesGroupPoints(stationId.get(), date1, date2);

      if (temp.size()>0) {
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

        /*
        for (List<Object> nested : PointsSessions) {
          String spotid = nested.get(0).toString();
          String stationid = stationId.get().toString();
          nested.remove(0);
          String stationspotid = stationid+"-"+spotid;
          nested.add(0, stationspotid);
        }
        */

        for (List<Object> nested : PointsSessions) {
          Integer spotid = (Integer) nested.get(0);
          Integer stationid = (Integer) stationId.get();
          nested.remove(0);
          Integer stationspotid = repository.findStationSpotId(stationid, spotid);
          nested.add(0, stationspotid);
        }

        //res.add(temp);
        if (flag==true) {
          res.add(temp.get(0).get(0));  // station id
          res.add(temp.get(0).get(1));  // operator title
          res.add(temp.get(0).get(2));  // current time
        }
        else {
          res.add(temp.get(0).get(1));  // station id
          res.add(temp.get(0).get(2));  // operator title
          res.add(temp.get(0).get(3));  // current time
        }
        res.add(date1.toString());    // start date
        res.add(date2.toString());    // end date
        res.add(totalkWh);            // total kWh
        res.add(sessions);         // sessions counter
        res.add(temp.get(0).get(5));  // number of distinct spots used
        res.add(PointsSessions);  
      }
      return res;
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