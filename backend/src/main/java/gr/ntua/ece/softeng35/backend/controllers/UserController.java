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
import java.security.IdentityScope;
import java.lang.*;
import org.json.*;


@RestController
class UserController {
  private final UserRepository repository;

  UserController(UserRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/user/{id}/profile")
  JsonNode myProfile(@PathVariable Integer id) {
    List<Integer> allUsers = repository.findAllUsersIds();
    if (!allUsers.contains(id)) {
      throw new BadRequestException();
    }
    else {
      List<List<Object>> info=repository.findInfoForUser(id);
      List<Object> userBasic = info.get(0);
      if (userBasic.size()==0) {
        throw new NoDataFoundException();
      }
      List<Integer> addresses=repository.findAddressForUser(id);
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


  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/user/{id}/myvehicles")
  JsonNode myVehicles(@PathVariable Integer id) {
    List<Integer> allUsers = repository.findAllUsersIds();
    if (!allUsers.contains(id)) {
      throw new BadRequestException();
    }
    else {
      List<Integer> vehicles = repository.findUserVehicles(id);
      if (vehicles.size()==0) {
        throw new NoDataFoundException();
      }
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
          current.put("Vehicle", (Integer) vehicleId);
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


  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping(value={"/evcharge/api/acchargers",
                     "/evcharge/api/acchargers/{chargerid}"})
  JsonNode acCharger(@PathVariable Optional<Integer> chargerid) {        
    
    if (!chargerid.isPresent()) {
      List<Integer> allChargers = repository.findAllAcChargersIds();
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode finalAnswer = mapper.createObjectNode();
      ArrayNode all = mapper.createArrayNode();

      for (Integer i : allChargers) {
        ObjectNode answer = mapper.createObjectNode();
        ArrayNode portnamesList = mapper.createArrayNode();
        //ArrayNode PowerPerChargingList = mapper.createArrayNode();

        List<List<Object>> basics = repository.findAcChargerBasics(i);
        List<String> portnames = repository.findAcChargerPortNames(i);
        List<List<Double>> PowerPerCharging = repository.findAcChargerPowerPerChargingPoint(i);
        if (basics.size()==0) {
          continue;
        }
        else {
          List<Object> basics2 = basics.get(0);
          answer.put("Ac Charger Id", i);
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
        }
        all.add(answer);
      }
      finalAnswer.put("Ac Chargers", all);
      String ugly = finalAnswer.toString();
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
      List<Integer> allChargers = repository.findAllAcChargersIds();
      if (!allChargers.contains(chargerid.get())) {
        throw new BadRequestException();
      }
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
  @GetMapping(value={"/evcharge/api/dcchargers",
                     "/evcharge/api/dcchargers/{chargerid}"})
  JsonNode dcCharger(@PathVariable Optional<Integer> chargerid) {        
    if (!chargerid.isPresent()) {
      List<Integer> allChargers = repository.findAllDcChargersIds();

      ObjectMapper mapper = new ObjectMapper();
      ObjectNode finalAnswer = mapper.createObjectNode();
      ArrayNode all = mapper.createArrayNode();
      for (Integer i : allChargers) {
        ObjectNode answer = mapper.createObjectNode();
        ArrayNode portnamesList = mapper.createArrayNode();
        List<Object> basics = repository.findDcChargerBasics(i);
        List<String> portnames = repository.findDcChargerPortNames(i);
        
        if (basics.size()==0) {
          continue;
        }
        else {
          //List<Object> basics2 = basics.get(0);
          answer.put("Dc Charger Id", i);
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
        }
        all.add(answer);
      }
      finalAnswer.put("Dc Chargers", all);
      String ugly = finalAnswer.toString();
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
      List<Integer> allChargers = repository.findAllDcChargersIds();
      if (!allChargers.contains(chargerid.get())) {
        throw new BadRequestException();
      }
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
  @GetMapping("/evcharge/api/user/{id}/mysessions")
  List<JsonNode> mySessions(@PathVariable Optional<Integer> id) {

    if(!id.isPresent()) {
        throw new BadRequestException();
    }
    else {
            ObjectMapper mapper = new ObjectMapper();
            ObjectNode answer = mapper.createObjectNode();
            ArrayNode ChargingSessionsList = mapper.createArrayNode();

            List<List<Object>> ChargingProcesses = repository.findByProcessesByUser(id.get());
            if(ChargingProcesses.size() ==0) 
            {
              ;
            }
            else {
            for (List<Object> nested : ChargingProcesses){
            ObjectNode session = mapper.createObjectNode();

            session.put("Station Id", (Integer) nested.get(9));  // station id
            session.put("Operator", (String) nested.get(10));  // operator title
            session.put("Station Title", (String) nested.get(11)); //station title
            session.put("Station Address", (String) nested.get(12)); //station address
            session.put("Vehicle Id",(Integer) nested.get(14)); // vehicle's id 
            session.put("Vehicle Model",(String) nested.get(13));
            session.put("Price Policy Ref.", (String) nested.get(1));
            session.put("Cost" ,(Double) nested.get(3));
            String str2 = nested.get(2).toString();
            String str = str2.substring(0, str2.length() - 2);
            session.put("Started On", str);
            str2 = nested.get(4).toString();
            str = str2.substring(0, str2.length() - 2);
            session.put("Charged On", str);
            str2 = nested.get(5).toString();
            str = str2.substring(0, str2.length() - 2);
            session.put("Finished On", str);
            session.put("kWh Delivered", (Double) nested.get(6));
            session.put("Payment Way", (String) nested.get(7));
            session.put("Rating", (Double) nested.get(8));
            
            ChargingSessionsList.add(session);
            }

            answer.put("Charging Sessions", ChargingSessionsList);
            }
            
            //find all stations that user has visited
            ObjectNode answer2 = mapper.createObjectNode();
            ArrayNode AllStations2 = mapper.createArrayNode();

            List<List<Object>> allStations = repository.findByStationsVisitedByUser(id.get());
            if (allStations.size()==0) {
              ;
            }
            else{

            for (List<Object> nested : allStations ) {
              ObjectNode session = mapper.createObjectNode() ;

                session.put("Station Id", (Integer) nested.get(0));
              
                session.put("Operator Id", (Integer) nested.get(2));
              
                session.put("Operator", (String) nested.get(3));
              
                session.put("Station Title",(String) nested.get(4));
              
                session.put("Station Address",(String) nested.get(5));
              
                session.put("Contact Telephone", (String) nested.get(6));
              
                session.put("Times Visited", (Long) nested.get(1));

              AllStations2.add(session);
            }

            answer2.put("List of Stations Visited",AllStations2);
            }
            //find providers per user

            ObjectNode answer3 = mapper.createObjectNode();
            ArrayNode AllProviders = mapper.createArrayNode();

            List<List<Object>> allProviders = repository.findByProviderVisitedByUser(id.get());
            if (allProviders.size()==0) {
              ;
            }
            else {
            for (List<Object> nested : allProviders ) {
              ObjectNode session = mapper.createObjectNode() ;

                session.put("Current Provider Id", (Integer) nested.get(0));
              
                session.put("Current Provider Name", (String) nested.get(1));

              AllProviders.add(session);
            }

            answer3.put("List of Current Providers", AllProviders);
            }
            //list of vehicles

            ObjectNode answer4 = mapper.createObjectNode();
            ArrayNode AllCars = mapper.createArrayNode();

            List<List<Object>> allCars = repository.findByVehicleByUser(id.get());
            if (allCars.size()==0) {
              ;
            }
            else {
            for (List<Object> nested : allCars ) {
              ObjectNode session = mapper.createObjectNode() ;

                session.put("Vehicle Id", (Integer) nested.get(0));
              
                session.put("Vehicle Brand", (String) nested.get(1));

                session.put("Vehicle Model", (String) nested.get(2));

                session.put("Vehicle Type", (String) nested.get(3));

                session.put("Vehicle's sessions", (Long) nested.get(4));
                Double totkwh = (Double) nested.get(5);
                session.put("Total kWh Delivered for this Vehicle", Math.round(totkwh*100d)/100d);
                Double totCost = (Double) nested.get(6) ;
                session.put("Total Vehicle's Cost",Math.round(totCost*100d)/100d);

              AllCars.add(session);
            }

            answer4.put("List of Vehicles", AllCars);
            }

            String ugly1 = answer.toString();
            String ugly2 = answer2.toString();
            String ugly3 = answer3.toString();
            String ugly4 = answer4.toString();
                try {
                    JsonNode allsessions = mapper.readTree(ugly1);
                    JsonNode allstations = mapper.readTree(ugly2);
                    JsonNode allproviders = mapper.readTree(ugly3);
                    JsonNode allcars = mapper.readTree(ugly4);
                    List<JsonNode> node = new ArrayList<>() ;
                    node.add(allsessions);
                    node.add(allstations);
                    node.add(allproviders);
                    node.add(allcars);
                    return node;
                }
                catch (Exception e) {
                    List<JsonNode> node = new ArrayList<>() ;
                    return node;
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
            ObjectNode answer = mapper.createObjectNode();
            ArrayNode ChargingSessionsList = mapper.createArrayNode();
                    
            List<List<Object>> temp = repository.findByStationForUser(stationid.get(),id.get());
            if (temp.size()==0) {
              throw new NoDataFoundException();
            }
            Boolean flag = false;

            /* retrieve sums from sessions  */
            List<List<Object>> PointsSessions = repository.findBySumsByStationForUser(stationid.get(),id.get());
            if (PointsSessions.size()==0) {
              throw new NoDataFoundException();
            }
            
            Long sessions = (Long) PointsSessions.get(0).get(1) ;
            Double totalCost = (Double) PointsSessions.get(0).get(2);
            Double totalkWh = (Double) PointsSessions.get(0).get(3);

            // res.add(temp);
            if (flag==true) {
                answer.put("Station Id", (Integer) temp.get(0).get(0));  // station id
                answer.put("Operator Id", (Integer) temp.get(0).get(10)); //operator id
                answer.put("Operator", (String) temp.get(0).get(1));  // operator title
                answer.put("Station Title", (String) temp.get(0).get(7)); //station title
                answer.put("Station Address", (String) temp.get(0).get(8)); //station address
              }
            else {
                answer.put("Station Id", (Integer) temp.get(0).get(1));  // station id
                answer.put("Operator Id", (Integer) temp.get(0).get(10)); //operator id 
                answer.put("Operator", (String) temp.get(0).get(2));  // operator title
                answer.put("Station Title", (String) temp.get(0).get(7)); //station title
                answer.put("Station Address", (String) temp.get(0).get(8)); //station address
            }
            answer.put("Total kWh Delivered", Math.round(totalkWh*100d)/100d);            // total kWh
            answer.put("Sessions Number", sessions);         // sessions counter
            answer.put("Total Cost", Math.round(totalCost*100d)/100d);           // total cost
            answer.put("Distinct Spots Used", (Long) temp.get(0).get(4));  // number of distinct spots used
            answer.put("Request Time", temp.get(0).get(3).toString());  // current time
            answer.put("Vehicle Id",(Integer) temp.get(0).get(9)); // vehicle's id 
            
            /*Integer spotid = (Integer) PointsSessions.get(0);
            Integer stationId = stationid.get();
            PointsSessions.remove(0);
            Integer stationspotid = repository.findStationSpotId(stationId, spotid, id.get());
            PointsSessions.add(0, stationspotid);*/

            List<List<Object>> ChargingProcesses = repository.findByStationByUser(stationid.get(), id.get());
            if (ChargingProcesses.size()==0) {
              throw new NoDataFoundException();
            }
            answer.put("Vehicle Model",(String) temp.get(0).get(6));
            for (List<Object> nested : ChargingProcesses){
            ObjectNode session = mapper.createObjectNode();

            session.put("Price Policy Ref.", (String) nested.get(1));
            session.put("Cost" ,(Double) nested.get(3));
            String str2 = nested.get(2).toString();
            String str = str2.substring(0, str2.length() - 2);
            session.put("Started On", str);
            str2 = nested.get(4).toString();
            str = str2.substring(0, str2.length() - 2);
            session.put("Charged On", str);
            str2 = nested.get(5).toString();
            str = str2.substring(0, str2.length() - 2);
            session.put("Finished On", str);
            session.put("kWh Delivered", (Double) nested.get(6));
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
  @GetMapping("/evcharge/api/user/{id}/mysessions/perprovider/{providerid}")
  JsonNode myProvSessions(@PathVariable Optional<Integer> id,
                      @PathVariable Optional<Integer> providerid) {

    if(!id.isPresent()) {
        throw new BadRequestException();
    }
    else {
        if(providerid.isPresent()) {
            ObjectMapper mapper = new ObjectMapper();
            ObjectNode answer = mapper.createObjectNode();
            ArrayNode ChargingSessionsList = mapper.createArrayNode();

            /* retrieve sums from sessions  */
            List<List<Object>> PointsSessions = repository.findBySumsByProvider(id.get(),providerid.get());
            if (PointsSessions.size()==0) {
              throw new NoDataFoundException();
            }
            Double totalkWh = (Double) PointsSessions.get(0).get(3);
            Double totalCost = (Double) PointsSessions.get(0).get(2);
            Double avgCost = (Double) PointsSessions.get(0).get(4);
            answer.put("Current Provider Id",(Integer) PointsSessions.get(0).get(0));
            answer.put("Current Provider",(String) PointsSessions.get(0).get(1));
            answer.put("Total kWh Delivered", Math.round(totalCost*100d)/100d);
            answer.put("Total Cost",  Math.round(totalkWh*100d)/100d);
            answer.put("Average Cost per kWh", Math.round(avgCost*100d)/100d);
            answer.put("Request Time", PointsSessions.get(0).get(5).toString());  // current time
            
            List<List<Object>> ProvidersSess = repository.findByProcessesByProvider(id.get(),providerid.get());
            
            if (ProvidersSess.size()==0) {
              throw new NoDataFoundException();
            }
            answer.put("Sessions Number",(Integer) ProvidersSess.size());
            for (List<Object> nested : ProvidersSess){
              ObjectNode session = mapper.createObjectNode();
  
              session.put("Station Id", (Integer) nested.get(9));  // station id
              session.put("Station Title", (String) nested.get(11)); //station title
              session.put("Station Address", (String) nested.get(12)); //station address
              session.put("Vehicle Id",(Integer) nested.get(14)); // vehicle's id 
              session.put("Vehicle Model",(String) nested.get(13));
              session.put("Price Policy Ref.", (String) nested.get(1));
              session.put("Cost" ,(Double) nested.get(3));
              String str2 = nested.get(2).toString();
              String str = str2.substring(0, str2.length() - 2);
              session.put("Started On", str);
              str2 = nested.get(4).toString();
              str = str2.substring(0, str2.length() - 2);
              session.put("Charged On", str);
              str2 = nested.get(5).toString();
              str = str2.substring(0, str2.length() - 2);
              session.put("Finished On", str);
              session.put("kWh Delivered", (Double) nested.get(6));
              session.put("Payment Way", (String) nested.get(7));
              session.put("Rating", (Double) nested.get(8));
              
              ChargingSessionsList.add(session);
              }

              answer.put("Provider's Charging Sessions", ChargingSessionsList);
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
  @GetMapping("/evcharge/api/user/{id}/mysessions/pervehicle/{vehicleid}")
  JsonNode myEVSessions(@PathVariable Optional<Integer> id,
                      @PathVariable Optional<Integer> vehicleid) {

    if(!id.isPresent()) {
        throw new BadRequestException();
    }
    else {
        if(vehicleid.isPresent()) {
            ObjectMapper mapper = new ObjectMapper();
            ObjectNode answer = mapper.createObjectNode();
            ArrayNode ChargingSessionsList = mapper.createArrayNode();

            List<List<Object>> allCars = repository.findBySpecificVehicleByUser(id.get(),vehicleid.get());
            if (allCars.size()==0) {
              throw new NoDataFoundException();
            }
            else {
            for (List<Object> nested : allCars ) {
              ObjectNode session = mapper.createObjectNode() ;

                answer.put("Vehicle Id", (Integer) nested.get(0));
              
                answer.put("Vehicle Brand", (String) nested.get(1));

                answer.put("Vehicle Model", (String) nested.get(2));

                answer.put("Vehicle Type", (String) nested.get(3));

                answer.put("Vehicle's sessions", (Long) nested.get(4));
                Double totkwh = (Double) nested.get(5);
                answer.put("Total kWh Delivered for this Vehicle", Math.round(totkwh*100d)/100d);
                Double totCost = (Double) nested.get(6) ;
                answer.put("Total Vehicle's Cost",Math.round(totCost*100d)/100d);
            }
            
            List<List<Object>> VehiclesSess = repository.findByProcessesByVehicle(id.get(),vehicleid.get());
            
            if (VehiclesSess.size()==0) {
              throw new NoDataFoundException();
            }
            answer.put("Sessions Number",(Integer) VehiclesSess.size());
            for (List<Object> nested : VehiclesSess){
              ObjectNode session = mapper.createObjectNode();
  
              session.put("Station Id", (Integer) nested.get(9));  // station id
              session.put("Station Title", (String) nested.get(11)); //station title
              session.put("Station Address", (String) nested.get(12)); //station address
              session.put("Price Policy Ref.", (String) nested.get(1));
              session.put("Cost" ,(Double) nested.get(3));
              String str2 = nested.get(2).toString();
              String str = str2.substring(0, str2.length() - 2);
              session.put("Started On", str);
              str2 = nested.get(4).toString();
              str = str2.substring(0, str2.length() - 2);
              session.put("Charged On", str);
              str2 = nested.get(5).toString();
              str = str2.substring(0, str2.length() - 2);
              session.put("Finished On", str);
              session.put("kWh Delivered", (Double) nested.get(6));
              session.put("Payment Way", (String) nested.get(7));
              session.put("Rating", (Double) nested.get(8));
              
              ChargingSessionsList.add(session);
              }

              answer.put("Vehicle's Charging Sessions", ChargingSessionsList);
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