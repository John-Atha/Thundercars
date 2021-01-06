package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.AcChargerPort;
import gr.ntua.ece.softeng35.backend.models.AcChargerPortRepository;

@RestController
class AcChargerPortController {
  private final AcChargerPortRepository repository;

  AcChargerPortController(AcChargerPortRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/acchargerports")
  List<AcChargerPort> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/acchargerports")
  AcChargerPort newAcChargerPort(@RequestBody AcChargerPort newAcChargerPort) {
    return repository.save(newAcChargerPort);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/acchargerports/{id}")
  AcChargerPort one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new AcChargerPortNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/acchargerports/{id}")
  AcChargerPort replaceAcChargerPort(@RequestBody AcChargerPort newAcChargerPort, @PathVariable Integer id) {
    return repository.findById(id)
      .map(acChargerPort -> {
        acChargerPort.setPortname(newAcChargerPort.getPortname());
        acChargerPort.setAc_charger(newAcChargerPort.getAc_charger());

        return repository.save(acChargerPort);
      })
      .orElseThrow(() -> new AcChargerPortNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/acchargerports/{id}")
  void deleteAcChargerPort(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
