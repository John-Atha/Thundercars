package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.PowerPerChargingPoint;
import gr.ntua.ece.softeng35.backend.models.PowerPerChargingPointRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

@RestController
public class PowerPerChargingPointController {
  private final PowerPerChargingPointRepository repository;
  private final UserRepository repository2;
  private final AdminRepository repository1;
  private final StationOwnerRepository repository3;

  PowerPerChargingPointController(PowerPerChargingPointRepository repository, UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3) {
    this.repository = repository;
    this.repository1 = repository1;
    this.repository2 = repository2;
    this.repository3 = repository3;
}

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/powerperchargingpoint")
  List<PowerPerChargingPoint> all(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/powerperchargingpointmod")
  PowerPerChargingPoint newPowerPerChargingPoint(@RequestBody PowerPerChargingPoint newPowerPerChargingPoint,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newPowerPerChargingPoint);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/powerperchargingpoint/{id}")
  PowerPerChargingPoint one(@PathVariable Integer id,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/powerperchargingpointmod/{id}")
  PowerPerChargingPoint replacePowerPerChargingPoint(@RequestBody PowerPerChargingPoint newPowerPerChargingPoint, @PathVariable Integer id,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

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
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/powerperchargingpointmod/{id}")
  void deletePowerPerChargingPoint(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
