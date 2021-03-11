package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.PowerPerChargingPoint;
import gr.ntua.ece.softeng35.backend.models.PowerPerChargingPointRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class PowerPerChargingPointController {
  private final PowerPerChargingPointRepository repository;
  private final UserRepository repository2;

  PowerPerChargingPointController(PowerPerChargingPointRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/powerperchargingpoint")
  List<PowerPerChargingPoint> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/powerperchargingpointmod")
  PowerPerChargingPoint newPowerPerChargingPoint(@RequestBody PowerPerChargingPoint newPowerPerChargingPoint,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newPowerPerChargingPoint);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/powerperchargingpoint/{id}")
  PowerPerChargingPoint one(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new PowerPerChargingPointNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/powerperchargingpointmod/{id}")
  PowerPerChargingPoint replacePowerPerChargingPoint(@RequestBody PowerPerChargingPoint newPowerPerChargingPoint, @PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(powerPerChargingPoint -> {
        powerPerChargingPoint.setAcCharger(newPowerPerChargingPoint.getAcCharger());
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
  @DeleteMapping("/evcharge/api/{apikey}/powerperchargingpointmod/{id}")
  void deletePowerPerChargingPoint(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
