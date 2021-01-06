package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ChargingProcess;
import gr.ntua.ece.softeng35.backend.models.ChargingProcessRepository;

@RestController
class ChargingProcessController {
  private final ChargingProcessRepository repository;

  ChargingProcessController(ChargingProcessRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/chargingprocesses")
  List<ChargingProcess> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/chargingprocesses")
  ChargingProcess newChargingProcess(@RequestBody ChargingProcess newChargingProcess) {
    return repository.save(newChargingProcess);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/chargingprocesses/{id}")
  ChargingProcess one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new ChargingProcessNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/chargingprocesses/{id}")
  ChargingProcess replaceChargingProcess(@RequestBody ChargingProcess newChargingProcess, @PathVariable Integer id) {
    return repository.findById(id)
      .map(chargingProcess -> {
        chargingProcess.setUser(newChargingProcess.getUser());
chargingProcess.setVehicle(newChargingProcess.getVehicle());
chargingProcess.setCharging_station(newChargingProcess.getCharging_station());
chargingProcess.setCharging_spot(newChargingProcess.getCharging_spot());
chargingProcess.setConnection_time(newChargingProcess.getConnection_time());
chargingProcess.setDisconnect_time(newChargingProcess.getDisconnect_time());
chargingProcess.setDone_charging_time(newChargingProcess.getDone_charging_time());
chargingProcess.setTimezone(newChargingProcess.getTimezone());
chargingProcess.setKwh_delivered(newChargingProcess.getKwh_delivered());
chargingProcess.setCost(newChargingProcess.getCost());
chargingProcess.setPayment_way(newChargingProcess.getPayment_way());
chargingProcess.setRating(newChargingProcess.getRating());
chargingProcess.setCharging_program(newChargingProcess.getCharging_program());

        return repository.save(chargingProcess);
      })
      .orElseThrow(() -> new ChargingProcessNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/chargingprocesses/{id}")
  void deleteChargingProcess(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}