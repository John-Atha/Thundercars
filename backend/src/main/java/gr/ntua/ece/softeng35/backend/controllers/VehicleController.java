package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;
import org.springframework.http.*;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.node.*;
import org.springframework.web.bind.annotation.*;
import gr.ntua.ece.softeng35.backend.models.Vehicle;
import gr.ntua.ece.softeng35.backend.models.VehicleRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.math.*;
import java.lang.*;
import org.json.*;

@RestController
public class VehicleController {
  private final VehicleRepository repository;
  private final UserRepository repository2;
  private final AdminRepository repository1;
  private final StationOwnerRepository repository3;

  VehicleController(VehicleRepository repository, UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3) {
    this.repository = repository;
    this.repository1 = repository1;
    this.repository2 = repository2;
    this.repository3 = repository3;
}

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/vehicles")
  List<Vehicle> all(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
      return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/vehiclesmod")
  Vehicle newVehicle(@RequestBody Vehicle newVehicle, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
        return repository.save(newVehicle);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/vehicles/{id}")
  Vehicle one(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/user/{id}/myvehicles/{vehicleId}")
  JsonNode myVehicle(@PathVariable Integer id,
                     @PathVariable Integer vehicleId,
                     @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    List<Integer> allUsers = repository.findAllUsersIds();
    if (!allUsers.contains(id)) {
      throw new BadRequestException();
    }
    else {
      List<Integer> vehicles = repository.findUserVehicles(id);
      ObjectMapper mapper = new ObjectMapper();
      
      if (!vehicles.contains(vehicleId)) {
        throw new BadRequestException();
      }
      else {
        ObjectNode current = mapper.createObjectNode();
        List<List<Object>> basicsListList = repository.findVehicleBasics(vehicleId);
        List<Integer> acChargers = repository.findVehicleAcCharger(vehicleId);
        List<Integer> dcChargers = repository.findVehicleDcCharger(vehicleId);
        if (basicsListList.size()==0) {
          throw new NoDataFoundException();  
        }
        List<Object> basicsList = basicsListList.get(0);
        current.put("Brand", (String) basicsList.get(0));
        current.put("Type", (String) basicsList.get(1));
        current.put("Model", (String) basicsList.get(2));
        if (basicsList.get(3)!=null) {
          current.put("Release Year", basicsList.get(3)!=null ? basicsList.get(3).toString():null);
        }
        else {
          current.put("Release Year","Unknown");
        }
        current.put("Usable Battery Size", (Double) basicsList.get(4));
        current.put("Energy Consumption", (Double) basicsList.get(5));
        if (acChargers.size()==0) {
          current.put("Ac Charging", "NO");
        }
        else {
          current.put("Ac Charging", "YES");
          ArrayNode AcChargers = mapper.createArrayNode();
          for (Integer charger : acChargers) {
            ObjectNode thisCharger = mapper.createObjectNode();
            thisCharger.put("AcCharger", charger);             
            AcChargers.add(thisCharger);
          }
          current.put("AcChargers", AcChargers);
          List<String> allPortNames = new ArrayList();
          //ObjectNode allPorts = mapper.createObjectNode();
          ArrayNode PortNamesList = mapper.createArrayNode();
          
          for (Integer charger : acChargers) {
            List<String> ports = repository.findAcChargerPortNames(charger);
            for (String name : ports) {
              allPortNames.add(name);
            }            
          }
          for (String name : allPortNames) {
            ObjectNode currPort = mapper.createObjectNode();
            currPort.put("Port Name", name);
            PortNamesList.add(currPort);
          }
          current.put("Ac Charger Ports", PortNamesList);
        }
        if (dcChargers.size()==0) {
          current.put("Dc Charging", "NO");
        }
        else {
          current.put("Dc Charging", "YES");
          ArrayNode DcChargers = mapper.createArrayNode();
          for (Integer charger : dcChargers) {
            ObjectNode thisCharger = mapper.createObjectNode();
            thisCharger.put("DcCharger", charger);
            DcChargers.add(thisCharger);
          }
          current.put("DcChargers", DcChargers);
          List<String> allPortNames = new ArrayList();
          //ObjectNode allPorts = mapper.createObjectNode();
          ArrayNode PortNamesList = mapper.createArrayNode();
          
          for (Integer charger : dcChargers) {
            List<String> ports = repository.findDcChargerPortNames(charger);
            for (String name : ports) {
              allPortNames.add(name);
            }            
          }
          for (String name : allPortNames) {
            ObjectNode currPort = mapper.createObjectNode();
            currPort.put("Port Name", name);
            PortNamesList.add(currPort);
          }
          current.put("Dc Charger Ports", PortNamesList);
        }
        String ugly = current.toString();
        try {
          JsonNode node = mapper.readTree(ugly);
          return node;
        }
        catch(Exception e) {
          JsonNode node = null;
          return null;
        }
      }
    }
    
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/vehiclesmod/{id}")
  Vehicle replaceVehicle(@RequestBody  Vehicle newVehicle, @PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
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
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/vehiclesmod/{id}")
  void deleteVehicle(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
