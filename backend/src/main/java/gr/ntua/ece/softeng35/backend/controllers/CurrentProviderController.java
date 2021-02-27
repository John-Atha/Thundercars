package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.CurrentProvider;
import gr.ntua.ece.softeng35.backend.models.CurrentProviderRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class CurrentProviderController {
  private final CurrentProviderRepository repository;
  private final UserRepository repository2;

  CurrentProviderController(CurrentProviderRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/{apikey}/currentproviders")
  List<CurrentProvider> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/admin/{apikey}/currentprovidersmod")
  CurrentProvider newCurrentProvider(@RequestBody CurrentProvider newCurrentProvider,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newCurrentProvider);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/{apikey}/currentproviders/{id}")
  CurrentProvider one(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new CurrentProviderNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/admin/{apikey}/currentprovidersmod/{id}")
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
      .orElseThrow(() -> new CurrentProviderNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/admin/{apikey}/currentprovidersmod/{id}")
  void deleteCurrentProvider(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
