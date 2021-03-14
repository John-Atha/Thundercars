package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.DcCharger;
import gr.ntua.ece.softeng35.backend.models.DcChargerRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

@RestController
public class DcChargerController {
  private final DcChargerRepository repository;
  private final UserRepository repository2;
  private final AdminRepository repository1;
  private final StationOwnerRepository repository3;

  DcChargerController(DcChargerRepository repository, UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3) {
    this.repository = repository;
    this.repository1 = repository1;
    this.repository2 = repository2;
    this.repository3 = repository3;
}
  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/dcchargersdb")
  List<DcCharger> all(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/dcchargersmod")
  DcCharger newDcCharger(@RequestBody DcCharger newDcCharger,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newDcCharger);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/dcchargersdb/{id}")
  DcCharger one(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/dcchargersmod/{id}")
  DcCharger replaceDcCharger(@RequestBody DcCharger newDccharger, @PathVariable Integer id,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(dcCharger -> {
        dcCharger.setMaxPower(newDccharger.getMaxPower());
        dcCharger.setIsDefaultChargingCurve(newDccharger.getIsDefaultChargingCurve());
        return repository.save(dcCharger);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/dcchargersmod/{id}")
  void deleteDcCharger(@PathVariable Integer id,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}