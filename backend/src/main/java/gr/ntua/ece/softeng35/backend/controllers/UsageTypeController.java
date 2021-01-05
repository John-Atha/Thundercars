package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.UsageType;
import gr.ntua.ece.softeng35.backend.models.UsageTypeRepository;

@RestController
class UsageTypeController {
  private final UsageTypeRepository repository;

  UsageTypeController(UsageTypeRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/usagetypes")
  List<UsageType> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/usagetypes")
  UsageType newUsageType(@RequestBody UsageType newUsageType) {
    return repository.save(newUsageType);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/usagetypes/{id}")
  UsageType one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new UsageTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/usagetypes/{id}")
  UsageType replaceUsageType(@RequestBody UsageType newUsageType, @PathVariable Integer id) {
    return repository.findById(id)
      .map(usageType -> {
        usageType.setTitle(newUsageType.getTitle());
        usageType.setIs_membership_required(newUsageType.getIs_membership_required());
        return repository.save(usageType);
      })
      .orElseThrow(() -> new UsageTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/usagetypes/{id}")
  void deleteUsageType(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}