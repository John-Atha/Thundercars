package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.DcCharger;
import gr.ntua.ece.softeng35.backend.models.DcChargerRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class DcChargerController {
  private final DcChargerRepository repository;
  private final UserRepository repository2;

  DcChargerController(DcChargerRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/dcchargersdb")
  List<DcCharger> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/dcchargersmod")
  DcCharger newDcCharger(@RequestBody DcCharger newDcCharger,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newDcCharger);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/dcchargersdb/{id}")
  DcCharger one(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new DcChargerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/dcchargersmod/{id}")
  DcCharger replaceDcCharger(@RequestBody DcCharger newDccharger, @PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(dcCharger -> {
        dcCharger.setMaxPower(newDccharger.getMaxPower());
        dcCharger.setIsDefaultChargingCurve(newDccharger.getIsDefaultChargingCurve());
        return repository.save(dcCharger);
      })
      .orElseThrow(() -> new DcChargerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/dcchargersmod/{id}")
  void deleteDcCharger(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}