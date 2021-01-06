
package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.StationOwner;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

@RestController
class StationownerController {
  private final StationOwnerRepository repository;

  StationownerController(StationOwnerRepository repository) {      
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/stationowners")
  List<StationOwner> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/stationowners")
  StationOwner newStationOwner(@RequestBody StationOwner newStationOwner) {
    return repository.save(newStationOwner);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/stationowners/{id}")
  StationOwner one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new StationOwnerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/stationowners/{id}")
  StationOwner replaceStationOwner(@RequestBody StationOwner newStationOwner, @PathVariable Integer id) {
    return repository.findById(id)
      .map(stationOwner -> {
        stationOwner.setUsername(newStationOwner.getUsername());
        stationOwner.setPassword(newStationOwner.getPassword());
        stationOwner.setEmail_addr(newStationOwner.getEmail_addr());
        stationOwner.setFirst_name(newStationOwner.getFirst_name());
        stationOwner.setLast_name(newStationOwner.getLast_name());
        stationOwner.setAddress(newStationOwner.getAddress());
        stationOwner.setDate_of_birth(newStationOwner.getDate_of_birth());
        return repository.save(stationOwner);
      })
      .orElseThrow(() -> new StationOwnerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/stationowners/{id}")
  void deleteStationOwner(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}