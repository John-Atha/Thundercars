package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.DcChargerPort;
import gr.ntua.ece.softeng35.backend.models.DcChargerPortRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
public class DcChargerPortController {
  private final DcChargerPortRepository repository;
  private final UserRepository repository2;

  DcChargerPortController(DcChargerPortRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/dcchargerports")
  List<DcChargerPort> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/dcchargerportsmod")
  DcChargerPort newDcChargerPort(@RequestBody DcChargerPort newDcChargerPort,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newDcChargerPort);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/dcchargerports/{id}")
  DcChargerPort one(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/dcchargerportsmod/{id}")
  DcChargerPort replaceDcChargerPort(@RequestBody DcChargerPort newDcChargerPort, @PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(dcChargerPort -> {
        dcChargerPort.setPortname(newDcChargerPort.getPortname());
        dcChargerPort.setDcCharger(newDcChargerPort.getDcCharger());

        return repository.save(dcChargerPort);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/dcchargerportsmod/{id}")
  void deleteDcChargerPort(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}