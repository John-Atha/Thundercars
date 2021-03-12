package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.CurrentProvider;
import gr.ntua.ece.softeng35.backend.models.CurrentProviderRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
public class CurrentProviderController {
  private final CurrentProviderRepository repository;
  private final UserRepository repository2;

  CurrentProviderController(CurrentProviderRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/currentproviders")
  List<CurrentProvider> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/currentprovidersmod")
  CurrentProvider newCurrentProvider(@RequestBody CurrentProvider newCurrentProvider,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newCurrentProvider);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/currentproviders/{id}")
  CurrentProvider one(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/currentprovidersmod/{id}")
  CurrentProvider replaceCurrentProvider(@RequestBody CurrentProvider newCurrentProvider, @PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(currentProvider -> {
        currentProvider.setName(newCurrentProvider.getName());
        currentProvider.setCountry(newCurrentProvider.getCountry());
        return repository.save(currentProvider);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/currentprovidersmod/{id}")
  void deleteCurrentProvider(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
