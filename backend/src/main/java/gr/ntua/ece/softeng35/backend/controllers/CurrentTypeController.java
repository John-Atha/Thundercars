package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.CurrentType;
import gr.ntua.ece.softeng35.backend.models.CurrentTypeRepository;

@RestController
class CurrentTypeController {
  private final CurrentTypeRepository repository;

  CurrentTypeController(CurrentTypeRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/currenttypes")
  List<CurrentType> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/currenttypes")
  CurrentType newCurrentType(@RequestBody CurrentType newCurrentType) {
    return repository.save(newCurrentType);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/currenttypes/{id}")
  CurrentType one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new CurrentTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/currenttypes/{id}")
  CurrentType replaceCurrentType(@RequestBody CurrentType newCurrentType, @PathVariable Integer id) {
    return repository.findById(id)
      .map(currentType -> {
        currentType.setTitle(newCurrentType.getTitle());
currentType.setDescription(newCurrentType.getDescription());

        return repository.save(currentType);
      })
      .orElseThrow(() -> new CurrentTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/currenttypes/{id}")
  void deleteCurrentType(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}