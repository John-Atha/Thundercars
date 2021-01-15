package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;
import org.springframework.http.*;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.node.*;
import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.User;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.math.*;
import java.lang.*;
import org.json.*;


@RestController
class UserController {
  private final UserRepository repository;

  UserController(UserRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/user{id}/profile")
  JsonNode myProfile(@PathVariable Optional<Integer> id) {
    if (!id.isPresent()) {
      throw new BadRequestException();
    }
    else {
      List<Integer> allUsers = repository.findAllUsersIds();
      if (!allUsers.contains(id.get())) {
        throw new BadRequestException();
      }
      else {
        List<List<Object>> info=repository.findInfoForUser(id.get());
        List<Object> userBasic = info.get(0);
        
        List<Integer> addresses=repository.findAddressForUser(id.get());
        Integer addressId = addresses.get(0);
        Boolean hasAddress = true;
        Boolean hasCountry = true;
        List<List<Object>> addressInfo;
        List<Object> addressBasic = new ArrayList();
        List<Integer> countries=repository.findCountryForUser(addressId);
        Integer countryId = null;
        if (countries.size()!=0) {
          countryId= countries.get(0);
        }
        List<List<Object>> countryInfo;
        List<Object> countryBasic = new ArrayList();
        if (addressId==null) {
          hasAddress=false;
          hasCountry=false;
        }
        else {
          addressInfo = repository.findAddressInfoForUser(addressId);
          addressBasic = addressInfo.get(0);
        }

        if (hasAddress==true) {
          if (countryId==null) {
            hasCountry=false;
          }
          else {
            countryInfo = repository.findCountryInfoForUser(countryId);
            countryBasic = countryInfo.get(0);
          }
        } 

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode answer = mapper.createObjectNode();

        answer.put("Username", (String) userBasic.get(0));
        answer.put("Email", (String) userBasic.get(1));
        answer.put("First Name", (String) userBasic.get(2));
        answer.put("Last Name", (String) userBasic.get(3));
        answer.put("Date Of Birth", userBasic.get(4).toString());
  
        if (hasAddress==false) {
          answer.put("Address", "Unknown");
        }
        else {
          answer.put("AddressLine 1", (String) addressBasic.get(0));
          answer.put("Town", (String) addressBasic.get(1));
          answer.put("State Or Province", (String) addressBasic.get(2));
          answer.put("Postcode", (String) addressBasic.get(3));
          answer.put("Contact Telephone 1", (String) addressBasic.get(4));
          answer.put("Contact Telephone 2", (String) addressBasic.get(5));
        }
        if (hasCountry==false) {
          answer.put("Country", "Unknown");
        }
        else {
          String country = (String) countryBasic.get(0) + " (" + (String) countryBasic.get(1) + ")";
          answer.put("Country", country);
          answer.put("Continent", (String) countryBasic.get(2));
        }
        String ugly = answer.toString();
        try {
          JsonNode node = mapper.readTree(ugly);
          return node;
        }
        catch (Exception e) {
          JsonNode node = null;
          return node;
        } 
      }
    }
  }


  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/user/{id}/myvehicles")
  JsonNode myVehicles(@PathVariable Optional<Integer> id) {
    
    if (!id.isPresent()) {
      throw new BadRequestException();
    }
    else {
      List<Integer> allUsers = repository.findAllUsersIds();
      if (!allUsers.contains(id.get())) {
        throw new BadRequestException();
      }
      else {
        List<Integer> vehicles = repository.findUserVehicles(id.get());
        ObjectMapper mapper = new ObjectMapper();
        ObjectNode allVehicles = mapper.createObjectNode();
        ArrayNode vehiclesList = mapper.createArrayNode();
        
        for (Integer vehicleId : vehicles) {
          if (vehicleId!=null) {
            ObjectNode current = mapper.createObjectNode();
            List<List<Object>> basicsListList = repository.findVehicleBasics(vehicleId);
            List<Integer> acChargers = repository.findVehicleAcCharger(vehicleId);
            List<Integer> dcChargers = repository.findVehicleDcCharger(vehicleId);
            if (basicsListList.size()==0) {
              continue;  
            }
            List<Object> basicsList = basicsListList.get(0);
            current.put("Brand", (String) basicsList.get(0));
            current.put("Type", (String) basicsList.get(1));
            current.put("Model", (String) basicsList.get(2));
            if (basicsList.get(3)!=null) {
              current.put("Release Year", basicsList.get(3).toString());
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
              current.put("AcC harger Ports", PortNamesList);
            }
            if (dcChargers.size()==0) {
              current.put("Dc Charging", "NO");
            }
            else {
              current.put("Dc Charging", "YES");
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
            vehiclesList.add(current);
          }
        }
        allVehicles.put("Vehicles List", vehiclesList);
        String ugly = allVehicles.toString();
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
  @GetMapping("/evcharge/api/acchargers/{chargerid}")
  JsonNode acCharger(@PathVariable Optional<Integer> chargerid) {        
    
    if (!chargerid.isPresent()) {
      throw new BadRequestException();
    }
    else {
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ArrayNode portnamesList = mapper.createArrayNode();
      //ArrayNode PowerPerChargingList = mapper.createArrayNode();

      List<List<Object>> basics = repository.findAcChargerBasics(chargerid.get());
      List<String> portnames = repository.findAcChargerPortNames(chargerid.get());
      List<List<Double>> PowerPerCharging = repository.findAcChargerPowerPerChargingPoint(chargerid.get());
      if (basics.size()==0) {
        throw new NoDataFoundException();
      }
      else {
        List<Object> basics2 = basics.get(0);
        answer.put("Ac Charger Id", chargerid.get());
        answer.put("Usable Phases", (Integer) basics2.get(0));
        answer.put("Max Power", (Double) basics2.get(1));

        if (portnames.size()==0) {
          answer.put("Port Names", "Unknown");
        }
        else {
          for (String port : portnames) {
            ObjectNode curr = mapper.createObjectNode();
            curr.put("Port Name", port);
            portnamesList.add(curr);
          }
          answer.put("Ports", portnamesList);
        }
        if (PowerPerCharging.size()==0) {
          answer.put("Power Per Charging Point", "Unknown");
        }
        else {
          List<Double> PowerPerCharging2 = PowerPerCharging.get(0);
          ObjectNode curr = mapper.createObjectNode();
          curr.put("2.0", (Double) PowerPerCharging2.get(0));
          curr.put("2.3", (Double) PowerPerCharging2.get(1));
          curr.put("3.7", (Double) PowerPerCharging2.get(2));
          curr.put("7.4", (Double) PowerPerCharging2.get(3));
          curr.put("11.0", (Double) PowerPerCharging2.get(4));
          curr.put("16.0", (Double) PowerPerCharging2.get(5));
          curr.put("22.0", (Double) PowerPerCharging2.get(6));
          curr.put("43.0", (Double) PowerPerCharging2.get(7));
          answer.put("Power Per Charging Point", curr);       
        }
        String ugly = answer.toString();
        try {
          JsonNode node = mapper.readTree(ugly);
          return node;
        }
        catch (Exception e) {
          JsonNode node = null;
          return node;
        } 
      }
    }
   }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/dcchargers/{chargerid}")
  JsonNode dcCharger(@PathVariable Optional<Integer> chargerid) {        
    if (!chargerid.isPresent()) {
      throw new BadRequestException();
    }
    else {
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      ArrayNode portnamesList = mapper.createArrayNode();
      //ArrayNode PowerPerChargingList = mapper.createArrayNode();

      List<Object> basics = repository.findDcChargerBasics(chargerid.get());
      List<String> portnames = repository.findDcChargerPortNames(chargerid.get());
      
      if (basics.size()==0) {
        throw new NoDataFoundException();
      }
      else {
        //List<Object> basics2 = basics.get(0);
        answer.put("Dc Charger Id", chargerid.get());
        answer.put("Max Power", (Double) basics.get(0));

        if (portnames.size()==0) {
          answer.put("Port Names", "Unknown");
        }
        else {
          for (String port : portnames) {
            ObjectNode curr = mapper.createObjectNode();
            curr.put("Port Name", port);
            portnamesList.add(curr);
          }
          answer.put("Ports", portnamesList);
        }

        String ugly = answer.toString();
        try {
          JsonNode node = mapper.readTree(ugly);
          return node;
        }
        catch (Exception e) {
          JsonNode node = null;
          return node;
        } 
      }
    }
  }
  

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/users")
  List<User> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/users")
  User newUser(@RequestBody User newUser) {
    return repository.save(newUser);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/users/{id}")
  User one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new UserNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/users/{id}")
  User replaceUser(@RequestBody User newUser, @PathVariable Integer id) {
    return repository.findById(id)
      .map(user -> {
        user.setUsername(newUser.getUsername());
        return repository.save(user);
      })
      .orElseThrow(() -> new UserNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/users/{id}")
  void deleteUser(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}