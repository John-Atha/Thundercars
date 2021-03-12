package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ConnectionType;
import gr.ntua.ece.softeng35.backend.models.ConnectionTypeRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
public class ConnectionTypeController {
  private final ConnectionTypeRepository repository;
  private final UserRepository repository2;

  ConnectionTypeController(ConnectionTypeRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/connectiontypes")
  List<ConnectionType> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/connectiontypesmod")
  ConnectionType newConnectionType(@RequestBody ConnectionType newConnectionType, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newConnectionType);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/connectiontypes/{id}")
  ConnectionType one(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/connectiontypesmod/{id}")
  ConnectionType replaceConnectionType(@RequestBody ConnectionType newConnectionType, @PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(connectionType -> {
        connectionType.setTitle(newConnectionType.getTitle());
        connectionType.setFormalName(newConnectionType.getFormalName());
        connectionType.setCategory(newConnectionType.getCategory());
        return repository.save(connectionType);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/connectiontypesmod/{id}")
  void deleteConnectionType(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}