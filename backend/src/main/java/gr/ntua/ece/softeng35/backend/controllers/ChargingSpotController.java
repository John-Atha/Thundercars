package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ChargingSpot;
import gr.ntua.ece.softeng35.backend.models.ChargingSpotRepository;

@RestController
class ChargingSpotController {
  private final ChargingSpotRepository repository;

  ChargingSpotController(ChargingSpotRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingspots")
  List<ChargingSpot> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/chargingspots")
  ChargingSpot newChargingSpot(@RequestBody ChargingSpot newChargingSpot) {
    return repository.save(newChargingSpot);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingspots/{id}")
  ChargingSpot one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new ChargingSpotNotFoundException(id));
  }

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
