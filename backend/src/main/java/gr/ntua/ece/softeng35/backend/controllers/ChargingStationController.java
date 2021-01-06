package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ChargingStation;
import gr.ntua.ece.softeng35.backend.models.ChargingStationRepository;

@RestController
class ChargingStationController {
  private final ChargingStationRepository repository;

  ChargingStationController(ChargingStationRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/chargingstations")
  List<ChargingStation> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/chargingstations")
  ChargingStation newChargingStation(@RequestBody ChargingStation newChargingStation) {
    return repository.save(newChargingStation);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/chargingstations/{id}")
  ChargingStation one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new ChargingStationNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/chargingstations/{id}")
  ChargingStation replaceChargingStation(@RequestBody ChargingStation newChargingStation, @PathVariable Integer id) {
    return repository.findById(id)
      .map(chargingStation -> {
        chargingStation.setUuid(newChargingStation.getUuid());
chargingStation.setOperator(newChargingStation.getOperator());
chargingStation.setUsage_type(newChargingStation.getUsage_type());
chargingStation.setAddress(newChargingStation.getAddress());
chargingStation.setComments(newChargingStation.getComments());
chargingStation.setDate_last_confirmed(newChargingStation.getDate_last_confirmed());
chargingStation.setDate_last_status_update(newChargingStation.getDate_last_status_update());
chargingStation.setDate_created(newChargingStation.getDate_created());
chargingStation.setStatus_type(newChargingStation.getStatus_type());
chargingStation.setSubmission_status(newChargingStation.getSubmission_status());
chargingStation.setRating(newChargingStation.getRating());
chargingStation.setCost_per_kwh(newChargingStation.getCost_per_kwh());

        return repository.save(chargingStation);
      })
      .orElseThrow(() -> new ChargingStationNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/chargingstations/{id}")
  void deleteChargingStation(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}