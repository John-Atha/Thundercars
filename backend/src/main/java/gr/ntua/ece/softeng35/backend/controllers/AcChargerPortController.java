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
  @GetMapping("/evcharge/api/acchargerports")
  List<AcChargerPort> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/acchargerports")
  AcChargerPort newAcChargerPort(@RequestBody AcChargerPort newAcChargerPort) {
    return repository.save(newAcChargerPort);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/acchargerports/{id}")
  AcChargerPort one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new AcChargerPortNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/acchargerports/{id}")
  AcChargerPort replaceAcChargerPort(@RequestBody AcChargerPort newAcChargerPort, @PathVariable Integer id) {
    return repository.findById(id)
      .map(acChargerPort -> {
        acChargerPort.setPortname(newAcChargerPort.getPortname());
        acChargerPort.setAcCharger(newAcChargerPort.getAcCharger());

        return repository.save(acChargerPort);
      })
      .orElseThrow(() -> new AcChargerPortNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/acchargerports/{id}")
  void deleteAcChargerPort(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
