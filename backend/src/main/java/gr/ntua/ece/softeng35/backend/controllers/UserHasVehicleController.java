package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.UserHasVehicle;
import gr.ntua.ece.softeng35.backend.models.UserHasVehicleRepository;

@RestController
class UserHasVehicleController {
  private final UserHasVehicleRepository repository;

  UserHasVehicleController(UserHasVehicleRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/userhasvehicles")
  List<UserHasVehicle> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/admin/userhasvehiclesmod")
  UserHasVehicle newUserHasVehicle(@RequestBody UserHasVehicle newUserHasVehicle) {
    return repository.save(newUserHasVehicle);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/userhasvehicles/{id}")
  UserHasVehicle one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new UserHasVehicleNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/admin/userhasvehiclesmod/{id}")
  UserHasVehicle replaceUserHasVehicle(@RequestBody UserHasVehicle newUserHasVehicle, @PathVariable Integer id) {
    return repository.findById(id)
      .map(userHasVehicle -> {
        userHasVehicle.setUser(newUserHasVehicle.getUser());
        userHasVehicle.setVehicle(newUserHasVehicle.getVehicle());
        return repository.save(userHasVehicle);
      })
      .orElseThrow(() -> new UserHasVehicleNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/admin/userhasvehiclesmod/{id}")
  void deleteUserHasVehicle(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}