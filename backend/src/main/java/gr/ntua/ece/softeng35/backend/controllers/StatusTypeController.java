package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.StatusType;
import gr.ntua.ece.softeng35.backend.models.StatusTypeRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class StatusTypeController {
  private final StatusTypeRepository repository;
  private final UserRepository repository2;

  StatusTypeController(StatusTypeRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/{apikey}/statustypes")
  List<StatusType> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/admin/{apikey}/statustypesmod")
  StatusType newStatusType(@RequestBody StatusType newStatusType,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newStatusType);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/{apikey}/statustypes/{id}")
  StatusType one(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new StatusTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/admin/{apikey}/statustypesmod/{id}")
  StatusType replaceStatusType(@RequestBody StatusType newStatusType, @PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(statusType -> {
        statusType.setTitle(newStatusType.getTitle());
        statusType.setIsOperational(newStatusType.getIsOperational());
        statusType.setIsUserSelectable(newStatusType.getIsUserSelectable());
        return repository.save(statusType);
      })
      .orElseThrow(() -> new StatusTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/admin/{apikey}/statustypesmod/{id}")
  void deleteStatusType(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}