package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.AcChargerPort;
import gr.ntua.ece.softeng35.backend.models.AcChargerPortRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class AcChargerPortController {
  private final AcChargerPortRepository repository;
  private final UserRepository repository2;

  AcChargerPortController(AcChargerPortRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/admin/acchargerports")
  List<AcChargerPort> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/admin/acchargerportsmod")
  AcChargerPort newAcChargerPort(@RequestBody AcChargerPort newAcChargerPort, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newAcChargerPort);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/admin/acchargerports/{id}")
  AcChargerPort one(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new AcChargerPortNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/admin/acchargerportsmod/{id}")
  AcChargerPort replaceAcChargerPort(@RequestBody AcChargerPort newAcChargerPort, @PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(acChargerPort -> {
        acChargerPort.setPortname(newAcChargerPort.getPortname());
        acChargerPort.setAcCharger(newAcChargerPort.getAcCharger());

        return repository.save(acChargerPort);
      })
      .orElseThrow(() -> new AcChargerPortNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/admin/acchargerportsmod/{id}")
  void deleteAcChargerPort(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
