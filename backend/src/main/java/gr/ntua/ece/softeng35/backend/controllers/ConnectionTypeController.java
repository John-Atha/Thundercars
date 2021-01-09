package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ConnectionType;
import gr.ntua.ece.softeng35.backend.models.ConnectionTypeRepository;

@RestController
class ConnectionTypeController {
  private final ConnectionTypeRepository repository;

  ConnectionTypeController(ConnectionTypeRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/connectiontypes")
  List<ConnectionType> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/connectiontypes")
  ConnectionType newConnectionType(@RequestBody ConnectionType newConnectionType) {
    return repository.save(newConnectionType);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/connectiontypes/{id}")
  ConnectionType one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new ConnectionTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/connectiontypes/{id}")
  ConnectionType replaceConnectionType(@RequestBody ConnectionType newConnectionType, @PathVariable Integer id) {
    return repository.findById(id)
      .map(connectionType -> {
        connectionType.setTitle(newConnectionType.getTitle());
connectionType.setFormalName(newConnectionType.getFormalName());
connectionType.setCategory(newConnectionType.getCategory());

        return repository.save(connectionType);
      })
      .orElseThrow(() -> new ConnectionTypeNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/connectiontypes/{id}")
  void deleteConnectionType(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}