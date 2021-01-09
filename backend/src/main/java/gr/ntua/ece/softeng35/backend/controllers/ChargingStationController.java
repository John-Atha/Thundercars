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
  @GetMapping("/evcharge/api/chargingstations")
  List<ChargingStation> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/chargingstations")
  ChargingStation newChargingStation(@RequestBody ChargingStation newChargingStation) {
    return repository.save(newChargingStation);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingstations/{id}")
  ChargingStation one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new ChargingStationNotFoundException(id));
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