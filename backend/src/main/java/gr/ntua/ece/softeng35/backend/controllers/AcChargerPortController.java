package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.AcChargerPort;
import gr.ntua.ece.softeng35.backend.models.AcChargerPortRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

@RestController
public class AcChargerPortController {
  private final AcChargerPortRepository repository;
  private final UserRepository repository2;
  private final AdminRepository repository1;
  private final StationOwnerRepository repository3;

  AcChargerPortController(AcChargerPortRepository repository, UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3) {
    this.repository = repository;
    this.repository1 = repository1;
    this.repository2 = repository2;
    this.repository3 = repository3;
}

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/acchargerports")
  List<AcChargerPort> all(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);
    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/acchargerportsmod")
  AcChargerPort newAcChargerPort(@RequestBody AcChargerPort newAcChargerPort, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);
    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newAcChargerPort);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/acchargerports/{id}")
  AcChargerPort one(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);
    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/acchargerportsmod/{id}")
  AcChargerPort replaceAcChargerPort(@RequestBody AcChargerPort newAcChargerPort, @PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);
    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(acChargerPort -> {
        acChargerPort.setPortname(newAcChargerPort.getPortname());
        acChargerPort.setAcCharger(newAcChargerPort.getAcCharger());

        return repository.save(acChargerPort);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/acchargerportsmod/{id}")
  void deleteAcChargerPort(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);
    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
