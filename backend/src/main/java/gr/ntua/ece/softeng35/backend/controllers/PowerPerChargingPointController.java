package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.PowerPerChargingPoint;
import gr.ntua.ece.softeng35.backend.models.PowerPerChargingPointRepository;

@RestController
class PowerPerChargingPointController {
  private final PowerPerChargingPointRepository repository;

  PowerPerChargingPointController(PowerPerChargingPointRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/powerperchargingpoint")
  List<PowerPerChargingPoint> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/powerperchargingpoint")
  PowerPerChargingPoint newPowerPerChargingPoint(@RequestBody PowerPerChargingPoint newPowerPerChargingPoint) {
    return repository.save(newPowerPerChargingPoint);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/powerperchargingpoint/{id}")
  PowerPerChargingPoint one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new PowerPerChargingPointNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/powerperchargingpoint/{id}")
  PowerPerChargingPoint replacePowerPerChargingPoint(@RequestBody PowerPerChargingPoint newPowerPerChargingPoint, @PathVariable Integer id) {
    return repository.findById(id)
      .map(powerPerChargingPoint -> {
        powerPerChargingPoint.setAc_charger(newPowerPerChargingPoint.getAc_charger());
 powerPerChargingPoint.setPoint20(newPowerPerChargingPoint.getPoint20());
 powerPerChargingPoint.setPoint23(newPowerPerChargingPoint.getPoint23());
 powerPerChargingPoint.setPoint37(newPowerPerChargingPoint.getPoint37());
 powerPerChargingPoint.setPoint74(newPowerPerChargingPoint.getPoint74());
powerPerChargingPoint.setPoint110(newPowerPerChargingPoint.getPoint110());
powerPerChargingPoint.setPoint160(newPowerPerChargingPoint.getPoint160());
powerPerChargingPoint.setPoint220(newPowerPerChargingPoint.getPoint220());
powerPerChargingPoint.setPoint430(newPowerPerChargingPoint.getPoint430());

        return repository.save(powerPerChargingPoint);
      })
      .orElseThrow(() -> new PowerPerChargingPointNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/powerperchargingpoint/{id}")
  void deletePowerPerChargingPoint(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
