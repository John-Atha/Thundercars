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
  @GetMapping("/evcharge/api/admin/dcchargerports")
  List<DcChargerPort> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/admin/dcchargerportsmod")
  DcChargerPort newDcChargerPort(@RequestBody DcChargerPort newDcChargerPort) {
    return repository.save(newDcChargerPort);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/dcchargerports/{id}")
  DcChargerPort one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new DcChargerPortNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/admin/dcchargerportsmod/{id}")
  DcChargerPort replaceDcChargerPort(@RequestBody DcChargerPort newDcChargerPort, @PathVariable Integer id) {
    return repository.findById(id)
      .map(dcChargerPort -> {
        dcChargerPort.setPortname(newDcChargerPort.getPortname());
dcChargerPort.setDcCharger(newDcChargerPort.getDcCharger());

        return repository.save(dcChargerPort);
      })
      .orElseThrow(() -> new DcChargerPortNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/admin/dcchargerportsmod/{id}")
  void deleteDcChargerPort(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}