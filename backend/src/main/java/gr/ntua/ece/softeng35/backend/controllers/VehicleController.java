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
  @GetMapping("/vehicles")
  List<Vehicle> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/vehicles")
  Vehicle newVehicle(@RequestBody Vehicle newVehicle) {
        return repository.save(newVehicle);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/vehicles/{id}")
  Vehicle one(@PathVariable String id) {
    return repository.findById(id)
      .orElseThrow(() -> new VehicleNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/vehicles/{id}")
  Vehicle replaceVehicle(@RequestBody  Vehicle newVehicle, @PathVariable String id) {
    return repository.findById(id)
      .map(vehicle -> {
        if(vehicle.getUser()!=null)
            vehicle.setUser(newVehicle.getUser());
        vehicle.setBrand(newVehicle.getBrand());
        vehicle.setBrand_id(newVehicle.getBrand_id());
        vehicle.setType(newVehicle.getType());
        vehicle.setModel(newVehicle.getModel());
        vehicle.setRelease_year(newVehicle.getRelease_year());
        vehicle.setUsable_battery_size(newVehicle.getUsable_battery_size());
        vehicle.setEnergy_consumption(newVehicle.getEnergy_consumption());
        if(vehicle.getAc_charger()!=null)
            vehicle.setAc_charger(newVehicle.getAc_charger());
        if(vehicle.getDc_charger()!=null)
            vehicle.setDc_charger(newVehicle.getDc_charger());
        return repository.save(vehicle);
      })
      .orElseThrow(() -> new VehicleNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/vehicles/{id}")
  void deleteVehicle(@PathVariable String id) {
    repository.deleteById(id);
  }
}
