package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.DcChargerPort;
import gr.ntua.ece.softeng35.backend.models.DcChargerPortRepository;

@RestController
class DcChargerPortController {
  private final DcChargerPortRepository repository;

  DcChargerPortController(DcChargerPortRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/dcchargerports")
  List<DcChargerPort> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/dcchargerports")
  DcChargerPort newDcChargerPort(@RequestBody DcChargerPort newDcChargerPort) {
    return repository.save(newDcChargerPort);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/dcchargerports/{id}")
  DcChargerPort one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new DcChargerPortNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/dcchargerports/{id}")
  DcChargerPort replaceDcChargerPort(@RequestBody DcChargerPort newDcChargerPort, @PathVariable Integer id) {
    return repository.findById(id)
      .map(dcChargerPort -> {
        dcChargerPort.setPortname(newDcChargerPort.getPortname());
dcChargerPort.setDc_charger(newDcChargerPort.getDc_charger());

        return repository.save(dcChargerPort);
      })
      .orElseThrow(() -> new DcChargerPortNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/dcchargerports/{id}")
  void deleteDcChargerPort(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}