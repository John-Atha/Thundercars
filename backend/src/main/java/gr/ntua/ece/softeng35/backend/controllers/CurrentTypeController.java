package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.CurrentType;
import gr.ntua.ece.softeng35.backend.models.CurrentTypeRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class CurrentTypeController {
  private final CurrentTypeRepository repository;
  private final UserRepository repository2;

  CurrentTypeController(CurrentTypeRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/currenttypes")
  List<CurrentType> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/currenttypesmod")
  CurrentType newCurrentType(@RequestBody CurrentType newCurrentType, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newCurrentType);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/currenttypes/{id}")
  CurrentType one(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new CurrentTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/currenttypesmod/{id}")
  CurrentType replaceCurrentType(@RequestBody CurrentType newCurrentType, @PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(currentType -> {
        currentType.setTitle(newCurrentType.getTitle());
currentType.setDescription(newCurrentType.getDescription());

        return repository.save(currentType);
      })
      .orElseThrow(() -> new CurrentTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/admin/{apikey}/currenttypesmod/{id}")
  void deleteCurrentType(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}