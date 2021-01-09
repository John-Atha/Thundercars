package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ChargingStationSpots;
import gr.ntua.ece.softeng35.backend.models.ChargingStationSpotsRepository;

@RestController
class ChargingStationSpotsController {
  private final ChargingStationSpotsRepository repository;

  ChargingStationSpotsController(ChargingStationSpotsRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingstationspots")
  List<ChargingStationSpots> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/chargingstationspots")
  ChargingStationSpots newChargingStationSpots(@RequestBody ChargingStationSpots newChargingStationSpots) {
    return repository.save(newChargingStationSpots);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingstationspots/{id}")
  ChargingStationSpots one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new ChargingStationSpotsNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/chargingstationspots/{id}")
  ChargingStationSpots replaceChargingStationSpots(@RequestBody ChargingStationSpots newChargingStationSpots, @PathVariable Integer id) {
    return repository.findById(id)
      .map(chargingStationSpots -> {
        chargingStationSpots.setChargingStation(newChargingStationSpots.getChargingStation());
        chargingStationSpots.setChargingSpot(newChargingStationSpots.getChargingSpot());
        chargingStationSpots.setQuantity(newChargingStationSpots.getQuantity());
        chargingStationSpots.setQuantityAvailable(newChargingStationSpots.getQuantityAvailable());
        chargingStationSpots.setQuantityOperational(newChargingStationSpots.getQuantityOperational());
        return repository.save(chargingStationSpots);
      })
      .orElseThrow(() -> new ChargingStationSpotsNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/chargingstationspots/{id}")
  void deleteChargingStationSpots(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
