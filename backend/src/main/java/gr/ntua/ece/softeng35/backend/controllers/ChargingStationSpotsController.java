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
  @GetMapping("/chargingstationspots")
  List<ChargingStationSpots> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/chargingstationspots")
  ChargingStationSpots newChargingStationSpots(@RequestBody ChargingStationSpots newChargingStationSpots) {
    return repository.save(newChargingStationSpots);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/chargingstationspots/{id}")
  ChargingStationSpots one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new ChargingStationSpotsNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/chargingstationspots/{id}")
  ChargingStationSpots replaceChargingStationSpots(@RequestBody ChargingStationSpots newChargingStationSpots, @PathVariable Integer id) {
    return repository.findById(id)
      .map(chargingStationSpots -> {
        chargingStationSpots.setCharging_station(newChargingStationSpots.getCharging_station());
chargingStationSpots.setCharging_spot(newChargingStationSpots.getCharging_spot());
chargingStationSpots.setQuantity(newChargingStationSpots.getQuantity());
chargingStationSpots.setQuantity_available(newChargingStationSpots.getQuantity_available());
chargingStationSpots.setQuantity_operational(newChargingStationSpots.getQuantity_operational());

        return repository.save(chargingStationSpots);
      })
      .orElseThrow(() -> new ChargingStationSpotsNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/chargingstationspots/{id}")
  void deleteChargingStationSpots(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
