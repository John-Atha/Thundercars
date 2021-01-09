package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ChargingProcess;
import gr.ntua.ece.softeng35.backend.models.ChargingProcessRepository;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;

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
  List<Integer> stationProcess(@PathVariable(required=false) Integer stationId,
                                       @PathVariable(required=false) String startDate, 
                                       @PathVariable(required=false) String endDate) {
    
    Date date1 = java.sql.Date.valueOf(LocalDate.parse(startDate, DateTimeFormatter.BASIC_ISO_DATE));
    Date date2 = java.sql.Date.valueOf(LocalDate.parse(endDate, DateTimeFormatter.BASIC_ISO_DATE));
    
    /*if (stationId==null) {
      return repository.findAll();
    }*/
    if (stationId!=null && (startDate==null || endDate==null)) {
      return repository.findByChargingStation_Id(stationId);
    }
    else if (stationId!=null && startDate!=null && endDate==null) {
      return repository.findByChargingStation_IdAndConnectionTimeGreaterThanEqual(stationId, date1);
    }
    else {
      return repository.findByChargingStation_IdAndConnectionTimeGreaterThanEqualAndDisconnectTimeLessThanEqual(stationId, date1, date2);
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