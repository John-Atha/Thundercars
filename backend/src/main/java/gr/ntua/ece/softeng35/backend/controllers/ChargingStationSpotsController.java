package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.ChargingStationSpots;
import gr.ntua.ece.softeng35.backend.models.ChargingStationSpotsRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class ChargingStationSpotsController {
  private final ChargingStationSpotsRepository repository;
  private final UserRepository repository2;

  ChargingStationSpotsController(ChargingStationSpotsRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/chargingstationspots")
  List<ChargingStationSpots> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/chargingstationspotsmod")
  ChargingStationSpots newChargingStationSpots(@RequestBody ChargingStationSpots newChargingStationSpots, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newChargingStationSpots);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/chargingstationspots/{id}")
  ChargingStationSpots one(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/chargingstationspotsmod/{id}")
  ChargingStationSpots replaceChargingStationSpots(@RequestBody ChargingStationSpots newChargingStationSpots, @PathVariable Integer id,
                                                  @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

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
  @DeleteMapping("/evcharge/api/{apikey}/chargingstationspotsmod/{id}")
  void deleteChargingStationSpots(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
