package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Vehicle;
import gr.ntua.ece.softeng35.backend.models.VehicleRepository;

@RestController
class VehicleController {
  private final VehicleRepository repository;

  VehicleController(VehicleRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/vehicles")
  List<Vehicle> all( @RequestParam(defaultValue = "json") String format) {
    if (format=="json") {
      return repository.findAll();
    }
    else {
      return repository.findAll();
    }
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/vehicles")
  Vehicle newVehicle(@RequestBody Vehicle newVehicle) {
        return repository.save(newVehicle);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/vehicles/{id}")
  Vehicle one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new VehicleNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/vehicles/{id}")
  Vehicle replaceVehicle(@RequestBody  Vehicle newVehicle, @PathVariable Integer id) {
    return repository.findById(id)
      .map(vehicle -> {
        vehicle.setBrand(newVehicle.getBrand());
        vehicle.setBrandId(newVehicle.getBrandId());
        vehicle.setType(newVehicle.getType());
        vehicle.setModel(newVehicle.getModel());
        vehicle.setReleaseYear(newVehicle.getReleaseYear());
        vehicle.setUsableBatterySize(newVehicle.getUsableBatterySize());
        vehicle.setEnergyConsumption(newVehicle.getEnergyConsumption());
        vehicle.setAcCharger(newVehicle.getAcCharger());
        vehicle.setDcCharger(newVehicle.getDcCharger());
        return repository.save(vehicle);
      })
      .orElseThrow(() -> new VehicleNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/vehicles/{id}")
  void deleteVehicle(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
