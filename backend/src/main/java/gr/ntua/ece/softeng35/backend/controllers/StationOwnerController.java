
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
  @GetMapping("/evcharge/api/stationowners")
  List<StationOwner> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/stationowners")
  StationOwner newStationOwner(@RequestBody StationOwner newStationOwner) {
    return repository.save(newStationOwner);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/stationowners/{id}")
  StationOwner one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new StationOwnerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/stationowners/{id}")
  StationOwner replaceStationOwner(@RequestBody StationOwner newStationOwner, @PathVariable Integer id) {
    return repository.findById(id)
      .map(stationOwner -> {
        stationOwner.setUsername(newStationOwner.getUsername());
        stationOwner.setPassword(newStationOwner.getPassword());
        stationOwner.setEmailAddr(newStationOwner.getEmailAddr());
        stationOwner.setFirstName(newStationOwner.getFirstName());
        stationOwner.setLastName(newStationOwner.getLastName());
        stationOwner.setAddress(newStationOwner.getAddress());
        stationOwner.setDateOfBirth(newStationOwner.getDateOfBirth());
        return repository.save(stationOwner);
      })
      .orElseThrow(() -> new StationOwnerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/stationowners/{id}")
  void deleteStationOwner(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}