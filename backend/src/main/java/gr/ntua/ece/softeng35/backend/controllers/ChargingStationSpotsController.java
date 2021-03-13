package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ChargingStationSpots;
import gr.ntua.ece.softeng35.backend.models.ChargingStationSpotsRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

@RestController
public class ChargingStationSpotsController {
  private final ChargingStationSpotsRepository repository;
  private final UserRepository repository2;
  private final AdminRepository repository1;
  private final StationOwnerRepository repository3;

  ChargingStationSpotsController(ChargingStationSpotsRepository repository, UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3) {
    this.repository = repository;
    this.repository1 = repository1;
    this.repository2 = repository2;
    this.repository3 = repository3;
}

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingstationspots")
  List<ChargingStationSpots> all(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/chargingstationspotsmod")
  ChargingStationSpots newChargingStationSpots(@RequestBody ChargingStationSpots newChargingStationSpots, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newChargingStationSpots);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/chargingstationspots/{id}")
  ChargingStationSpots one(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/chargingstationspotsmod/{id}")
  ChargingStationSpots replaceChargingStationSpots(@RequestBody ChargingStationSpots newChargingStationSpots, @PathVariable Integer id,
                                                  @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(chargingStationSpots -> {
        chargingStationSpots.setChargingStation(newChargingStationSpots.getChargingStation());
        chargingStationSpots.setChargingSpot(newChargingStationSpots.getChargingSpot());
        chargingStationSpots.setQuantity(newChargingStationSpots.getQuantity());
        chargingStationSpots.setQuantityAvailable(newChargingStationSpots.getQuantityAvailable());
        chargingStationSpots.setQuantityOperational(newChargingStationSpots.getQuantityOperational());
        return repository.save(chargingStationSpots);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/chargingstationspotsmod/{id}")
  void deleteChargingStationSpots(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
