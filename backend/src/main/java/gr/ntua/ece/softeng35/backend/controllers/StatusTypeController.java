package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.StatusType;
import gr.ntua.ece.softeng35.backend.models.StatusTypeRepository;

@RestController
class StatusTypeController {
  private final StatusTypeRepository repository;

  StatusTypeController(StatusTypeRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/statustypes")
  List<StatusType> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/statustypes")
  StatusType newStatusType(@RequestBody StatusType newStatusType) {
    return repository.save(newStatusType);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/statustypes/{id}")
  StatusType one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new StatusTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/statustypes/{id}")
  StatusType replaceStatusType(@RequestBody StatusType newStatusType, @PathVariable Integer id) {
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
  @DeleteMapping("/evcharge/api/statustypes/{id}")
  void deleteStatusType(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}