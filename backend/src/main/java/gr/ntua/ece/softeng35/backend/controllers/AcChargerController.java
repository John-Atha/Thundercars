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
  @GetMapping("/evcharge/api/admin/acchargers")
  List<AcCharger> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/admin/acchargersmod")
  AcCharger newAcCharger(@RequestBody AcCharger newAcCharger) {
    return repository.save(newAcCharger);
  }

  /*@CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/acchargers/{id}")
  AcCharger one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new AcChargerNotFoundException(id));
  }*/

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/admin/acchargersmod/{id}")
  AcCharger replaceAcCharger(@RequestBody AcCharger newAccharger, @PathVariable Integer id) {
    return repository.findById(id)
      .map(acCharger -> {
        acCharger.setUsablePhases(newAccharger.getUsablePhases());
        acCharger.setMaxPower(newAccharger.getMaxPower());

        return repository.save(acCharger);
      })
      .orElseThrow(() -> new AcChargerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/admin/acchargersmod/{id}")
  void deleteAcCharger(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
