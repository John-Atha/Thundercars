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
        answer.put("FirstName", (String) userBasic.get(2));
        answer.put("LastName", (String) userBasic.get(3));
        answer.put("DateOfBirth", userBasic.get(4).toString());
  
        if (hasAddress==false) {
          answer.put("Address", "Unknown");
        }
        else {
          answer.put("AddressLine1", (String) addressBasic.get(0));
          answer.put("Town", (String) addressBasic.get(1));
          answer.put("StateOrProvince", (String) addressBasic.get(2));
          answer.put("PostCode", (String) addressBasic.get(3));
          answer.put("ContactTelephone1", (String) addressBasic.get(4));
          answer.put("ContactTelephone2", (String) addressBasic.get(5));
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
              current.put("ReleaseYear", basicsList.get(3).toString());
            }
            else {
              current.put("ReleaseYear","Unknown");
            }
            current.put("UsableBatterySize", (Double) basicsList.get(4));
            current.put("EnergyConsumption", (Double) basicsList.get(5));
            if (acChargers.size()==0) {
              current.put("AcCharging", "NO");
            }
            else {
              current.put("AcCharging", "YES");
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
                currPort.put("PortName", name);
                PortNamesList.add(currPort);
              }
              current.put("AcChargerPorts", PortNamesList);
            }
            if (dcChargers.size()==0) {
              current.put("DcCharging", "NO");
            }
            else {
              current.put("DcCharging", "YES");
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
                currPort.put("PortName", name);
                PortNamesList.add(currPort);
              }
              current.put("DcChargerPorts", PortNamesList);
            }
            vehiclesList.add(current);
          }
        }
        allVehicles.put("VehiclesList", vehiclesList);
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
        answer.put("AcChargerId", chargerid.get());
        answer.put("UsablePhases", (Integer) basics2.get(0));
        answer.put("MaxPower", (Double) basics2.get(1));

        if (portnames.size()==0) {
          answer.put("PortNames", "Unknown");
        }
        else {
          for (String port : portnames) {
            ObjectNode curr = mapper.createObjectNode();
            curr.put("PortName", port);
            portnamesList.add(curr);
          }
          answer.put("Ports", portnamesList);
        }
        if (PowerPerCharging.size()==0) {
          answer.put("PowerPerChargingPoint", "Unknown");
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
          answer.put("PowerPerChargingPoint", curr);       
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
        answer.put("DcChargerId", chargerid.get());
        answer.put("MaxPower", (Double) basics.get(0));

        if (portnames.size()==0) {
          answer.put("PortNames", "Unknown");
        }
        else {
          for (String port : portnames) {
            ObjectNode curr = mapper.createObjectNode();
            curr.put("PortName", port);
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
  @GetMapping("/evcharge/api/user/{id}/mysessions/perstation/{stationid}")
  JsonNode mySessions(@PathVariable Optional<Integer> id,
                      @PathVariable Optional<Integer> stationid) {

    if(!id.isPresent()) {
        throw new BadRequestException();
    }
    else {
        if(stationid.isPresent()) {
            ObjectMapper mapper = new ObjectMapper();
            ObjectNode allStations = mapper.createObjectNode();
            ArrayNode allData = mapper.createArrayNode();


            ObjectNode answer = mapper.createObjectNode();
            ObjectNode allSessions = mapper.createObjectNode();
            ArrayNode ChargingSessionsList = mapper.createArrayNode();
                    
            List<List<Object>> temp = repository.findByStationForUser(stationid.get(),id.get());
            Boolean flag = false;

            /* retrieve sums from sessions  */
            List<List<Object>> PointsSessions = repository.findBySumsByStationForUser(stationid.get(),id.get());
            
            
            Long sessions = (Long) PointsSessions.get(0).get(1) ;
            Double totalCost = (Double) PointsSessions.get(0).get(2);
            Double totalkWh = (Double) PointsSessions.get(0).get(3);

            // res.add(temp);
            if (flag==true) {
                answer.put("Station Id", (Integer) temp.get(0).get(0));  // station id
                answer.put("Operator", (String) temp.get(0).get(1));  // operator title
                answer.put("Request Time", temp.get(0).get(2).toString());  // current time
            }
            else {
                answer.put("Station Id", (Integer) temp.get(0).get(1));  // station id
                answer.put("Operator", (String) temp.get(0).get(2));  // operator title
                answer.put("Request Time", temp.get(0).get(3).toString());  // current time
            }
            answer.put("Total kWh Delivered", totalkWh);            // total kWh
            answer.put("Sessions Number", sessions);         // sessions counter
            answer.put("Total Cost", totalCost);           // total cost
            answer.put("Distinct Spots Used", (Long) temp.get(0).get(4));  // number of distinct spots used
            
            
            /*Integer spotid = (Integer) PointsSessions.get(0);
            Integer stationId = stationid.get();
            PointsSessions.remove(0);
            Integer stationspotid = repository.findStationSpotId(stationId, spotid, id.get());
            PointsSessions.add(0, stationspotid);*/

            List<List<Object>> ChargingProcesses = repository.findByStationByUser(stationid.get(), id.get());
            
            answer.put("Vehicle Name",(String) temp.get(0).get(6));
            for (List<Object> nested : ChargingProcesses){
            ObjectNode session = mapper.createObjectNode();

            session.put("PricePolicyRef", (String) nested.get(1));
            session.put("Cost" ,(Double) nested.get(3));
            session.put("Started On", nested.get(2).toString());
            session.put("Charged On", nested.get(4).toString());
            session.put("Finished On",nested.get(5).toString());
            session.put("kWhDelivered", (Double) nested.get(6));
            session.put("Payment Way", (String) nested.get(7));
            session.put("Rating", (Double) nested.get(8));
            
            ChargingSessionsList.add(session);
            }

            answer.put("Station Charging Sessions", ChargingSessionsList); 
            
            //allData.add(answer);

            //allStations.put("ChargingStationsSessions", allData);
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
        else {
            throw new BadRequestException();
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