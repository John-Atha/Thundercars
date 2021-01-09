package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.CurrentProvider;
import gr.ntua.ece.softeng35.backend.models.CurrentProviderRepository;

@RestController
class CurrentProviderController {
  private final CurrentProviderRepository repository;

  CurrentProviderController(CurrentProviderRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/currentproviders")
  List<CurrentProvider> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/currentproviders")
  CurrentProvider newCurrentProvider(@RequestBody CurrentProvider newCurrentProvider) {
    return repository.save(newCurrentProvider);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/currentproviders/{id}")
  CurrentProvider one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new CurrentProviderNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/currentproviders/{id}")
  CurrentProvider replaceCurrentProvider(@RequestBody CurrentProvider newCurrentProvider, @PathVariable Integer id) {
    return repository.findById(id)
      .map(currentProvider -> {
        currentProvider.setName(newCurrentProvider.getName());
        currentProvider.setCountry(newCurrentProvider.getCountry());
        return repository.save(currentProvider);
      })
      .orElseThrow(() -> new CurrentProviderNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/currentproviders/{id}")
  void deleteCurrentProvider(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
