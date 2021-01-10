package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ChargingProcess;
import gr.ntua.ece.softeng35.backend.models.ChargingProcessRepository;

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

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping(value = {"/evcharge/api/SessionsPerStation","/evcharge/api/SessionsPerStation/{stationId}",
                       "/evcharge/api/SessionsPerStation/{stationId}/{startDate}/{endDate}",
                       "/evcharge/api/SessionsPerStation/{stationId}/{startDate}",})
  List<Object> stationProcess(@PathVariable Optional<Integer> stationId,
                                       @PathVariable Optional<String> startDate, 
                                       @PathVariable Optional<String> endDate) {
    
    if (stationId.isPresent() && !startDate.isPresent() && !endDate.isPresent()) {
      List<List<Object>> temp = repository.findByStation(stationId.get());
      List<Object> res = new ArrayList();
      
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

        res.add(temp.get(0).get(1));  // station id
        res.add(temp.get(0).get(2));  // operator title
        res.add(temp.get(0).get(3));  // current time
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
        
        res.add(temp.get(0).get(1));  // station id
        res.add(temp.get(0).get(2));  // operator title
        res.add(temp.get(0).get(3));  // current time
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

        res.add(temp.get(0).get(1));  // station id
        res.add(temp.get(0).get(2));  // operator title
        res.add(temp.get(0).get(3));  // current time
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