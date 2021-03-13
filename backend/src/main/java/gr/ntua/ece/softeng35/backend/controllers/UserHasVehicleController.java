package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.UserHasVehicle;
import gr.ntua.ece.softeng35.backend.models.UserHasVehicleRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
public class UserHasVehicleController {
  private final UserHasVehicleRepository repository;
  private final UserRepository repository2;

  UserHasVehicleController(UserHasVehicleRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/userhasvehicles")
  List<UserHasVehicle> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/userhasvehiclesmod")
  UserHasVehicle newUserHasVehicle(@RequestBody UserHasVehicle newUserHasVehicle,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newUserHasVehicle);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/userhasvehicles/{id}")
  UserHasVehicle one(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/userhasvehiclesmod/{id}")
  UserHasVehicle replaceUserHasVehicle(@RequestBody UserHasVehicle newUserHasVehicle, @PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(userHasVehicle -> {
        userHasVehicle.setUser(newUserHasVehicle.getUser());
        userHasVehicle.setVehicle(newUserHasVehicle.getVehicle());
        return repository.save(userHasVehicle);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/userhasvehiclesmod/{id}")
  void deleteUserHasVehicle(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}