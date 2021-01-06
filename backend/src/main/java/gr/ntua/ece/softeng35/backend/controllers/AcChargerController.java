package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.AcCharger;
import gr.ntua.ece.softeng35.backend.models.AcChargerRepository;

@RestController
class AcChargerController {
  private final AcChargerRepository repository;

  AcChargerController(AcChargerRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/acchargers")
  List<AcCharger> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/acchargers")
  AcCharger newAcCharger(@RequestBody AcCharger newAcCharger) {
    return repository.save(newAcCharger);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/acchargers/{id}")
  AcCharger one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new AcChargerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/acchargers/{id}")
  AcCharger replaceAcCharger(@RequestBody AcCharger newAccharger, @PathVariable Integer id) {
    return repository.findById(id)
      .map(acCharger -> {
        acCharger.setUsable_phases(newAccharger.getUsable_phases());
        acCharger.setMax_power(newAccharger.getMax_power());

        return repository.save(acCharger);
      })
      .orElseThrow(() -> new AcChargerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/acchargers/{id}")
  void deleteAcCharger(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
