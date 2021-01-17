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
  @GetMapping("/evcharge/api/admin/dcchargers")
  List<DcCharger> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/admin/dcchargersmod")
  DcCharger newDcCharger(@RequestBody DcCharger newDcCharger) {
    return repository.save(newDcCharger);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/dcchargers/{id}")
  DcCharger one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new DcChargerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/admin/dcchargersmod/{id}")
  DcCharger replaceDcCharger(@RequestBody DcCharger newDccharger, @PathVariable Integer id) {
    return repository.findById(id)
      .map(dcCharger -> {
        dcCharger.setMaxPower(newDccharger.getMaxPower());
        dcCharger.setIsDefaultChargingCurve(newDccharger.getIsDefaultChargingCurve());
        return repository.save(dcCharger);
      })
      .orElseThrow(() -> new DcChargerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/admin/dcchargersmod/{id}")
  void deleteDcCharger(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}