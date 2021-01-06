package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.DcCharger;
import gr.ntua.ece.softeng35.backend.models.DcChargerRepository;

@RestController
class DcChargerController {
  private final DcChargerRepository repository;

  DcChargerController(DcChargerRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/dcchargers")
  List<DcCharger> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/dcchargers")
  DcCharger newDcCharger(@RequestBody DcCharger newDcCharger) {
    return repository.save(newDcCharger);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/dcchargers/{id}")
  DcCharger one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new DcChargerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/dcchargers/{id}")
  DcCharger replaceDcCharger(@RequestBody DcCharger newDccharger, @PathVariable Integer id) {
    return repository.findById(id)
      .map(dcCharger -> {
        dcCharger.setMax_power(newDccharger.getMax_power());
dcCharger.setIs_default_charging_curve(newDccharger.getIs_default_charging_curve());

        return repository.save(dcCharger);
      })
      .orElseThrow(() -> new DcChargerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/dcchargers/{id}")
  void deleteDcCharger(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}