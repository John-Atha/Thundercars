package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.UserHasVehicle;
import gr.ntua.ece.softeng35.backend.models.UserHasVehicleRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

@RestController
public class UserHasVehicleController {
  private final UserHasVehicleRepository repository;
  private final UserRepository repository2;
  private final AdminRepository repository1;
  private final StationOwnerRepository repository3;

  UserHasVehicleController(UserHasVehicleRepository repository, UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3) {
    this.repository = repository;
    this.repository1 = repository1;
    this.repository2 = repository2;
    this.repository3 = repository3;
}

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/userhasvehicles")
  List<UserHasVehicle> all(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/userhasvehiclesmod")
  UserHasVehicle newUserHasVehicle(@RequestBody UserHasVehicle newUserHasVehicle,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newUserHasVehicle);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/userhasvehicles/{id}")
  UserHasVehicle one(@PathVariable Integer id,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/userhasvehiclesmod/{id}")
  UserHasVehicle replaceUserHasVehicle(@RequestBody UserHasVehicle newUserHasVehicle, @PathVariable Integer id,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

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
  @DeleteMapping("/evcharge/api/userhasvehiclesmod/{id}")
  void deleteUserHasVehicle(@PathVariable Integer id,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}