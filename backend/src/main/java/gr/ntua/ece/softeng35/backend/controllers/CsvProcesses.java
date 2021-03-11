package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;
import org.springframework.http.*;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.node.*;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.mock.web.MockMultipartFile;
import org.apache.commons.io.IOUtils;

import gr.ntua.ece.softeng35.backend.models.ChargingProcessRepository;
import gr.ntua.ece.softeng35.backend.models.ChargingStationRepository;
import gr.ntua.ece.softeng35.backend.models.ChargingSpotRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.VehicleRepository;
import gr.ntua.ece.softeng35.backend.models.ChargingProcess;


import java.text.SimpleDateFormat;
import java.time.LocalDateTime;    
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.math.*;
import java.lang.*;
import org.json.*;
import java.io.*;

@RestController
class CsvProcesses{

    ChargingProcessRepository newRepository;
    VehicleRepository newVehicle;
    ChargingSpotRepository newCharSpot;
    ChargingStationRepository newCharStation;
    UserRepository newUser;

    CsvProcesses(ChargingProcessRepository newRepository,UserRepository newUser,
                           ChargingStationRepository newCharStation, ChargingSpotRepository newCharSpot,
                           VehicleRepository newVehicle) 
    {
        this.newRepository = newRepository;
        this.newVehicle = newVehicle;
        this.newUser = newUser;
        this.newCharStation = newCharStation;
        this.newCharSpot = newCharSpot;
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/{apikey}/admin/system/sessionsupd")
    JsonNode CsvUpload(@RequestParam MultipartFile file,@PathVariable String apikey) {

        CliController validator = new CliController(newUser);

        if (!validator.validate(apikey)){
            throw new NotAuthorizedException();
        }

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode Summary = mapper.createObjectNode();
        Long sessionsImported = 0L;
        Long sessionsInFile = 0L;
        Long totalSessionsInDB = 0L;

        ChargingProcess newCharProc = new ChargingProcess();

        //Header indexes for all attributes of a session
        Integer ididx=0,progidx=0,contimeidx=0,costidx=0,distimeidx=0,dontimeidx=0,
                kwhidx=0,payidx=0,ratidx=0,zoneidx=0,spotidx=0,stationidx=0,useridx=0,vehicleidx=0;

        //for dates
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"); 
        
        //charging processes before
        Long totalBefore = 0L;
        totalBefore = newRepository.countAllProcesses();

        //delimiters
        String line = "";  
        String splitBy = ",";   
        try {
            InputStream is = file.getInputStream();
            /*parsing a CSV file into BufferedReader class constructor*/  
            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            Integer i = 0; 
            while ((line = br.readLine()) != null)   //returns a Boolean value  
            {  
                if(i==0)
                {
                    //get header and define indexes for each column
                    String[] Header = line.split(splitBy);
                    for(Integer j=0; j<Header.length; j++)
                    {
                        if(Header[j].equals("id")) {
                            ididx = j;
                            continue;
                        }
                        if(Header[j].equals("chargingProgram")) {
                            progidx = j;
                            continue;
                        }
                        if(Header[j].equals("connectionTime")) {
                            contimeidx = j;
                            continue;
                        }
                        if(Header[j].equals("disconnectTime")) {
                            distimeidx = j;
                            continue;
                        }
                        if(Header[j].equals("cost")) {
                            costidx = j;
                            continue;
                        }
                        if(Header[j].equals("doneChargingTime")) {
                            dontimeidx = j;
                            continue;
                        }
                        if(Header[j].equals("kwhDelivered")) {
                            kwhidx = j;
                            continue;
                        }
                        if(Header[j].equals("paymentWay")) {
                            payidx = j;
                            continue;
                        }
                        if(Header[j].equals("rating")) {
                            ratidx = j;
                            continue;
                        }
                        if(Header[j].equals("timezone")) {
                            zoneidx = j;
                            continue;
                        }
                        if(Header[j].equals("chargingSpot")) {
                            spotidx = j;
                            continue;
                        }
                        if(Header[j].equals("chargingStation")) {
                            stationidx = j;
                            continue;
                        }
                        if(Header[j].equals("user")) {
                            useridx = j;
                            continue;
                        }
                        if(Header[j].equals("vehicle")) {
                            vehicleidx = j;
                            continue;
                        }
                    }
                    i++;
                }
                else {
                    sessionsInFile++;
                    String[] data = line.split(splitBy); // use comma as separator 
                    newCharProc.setId(Integer.parseInt(data[ididx]));
                    newCharProc.setChargingProgram(data[progidx]);
                    try {
                        java.util.Date date1=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(data[contimeidx]);
                        java.util.Date date2=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(data[distimeidx]);
                        java.util.Date date3=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(data[dontimeidx]);
                        newCharProc.setConnectionTime(date1);
                        newCharProc.setDisconnectTime(date2);
                        newCharProc.setDoneChargingTime(date3);
                    }
                    catch (Exception e) {
                        throw new BadRequestException();
                    }
                    newCharProc.setKwhDelivered(Double.parseDouble(data[kwhidx]));
                    newCharProc.setRating(Double.parseDouble(data[ratidx]));
                    newCharProc.setPaymentWay(data[payidx]);
                    newCharProc.setCost(Double.parseDouble(data[costidx]));
                    newCharProc.setTimezone(data[zoneidx]);
                    //findbyid returns optional so we check if it is present
                    if(!newVehicle.findById(Integer.parseInt(data[vehicleidx])).isPresent()) {
                        newCharProc.setVehicle(null);
                    }
                    else {
                        newCharProc.setVehicle((newVehicle.findById(Integer.parseInt(data[vehicleidx]))).get());
                    }
                    //findbyid returns optional so we check if it is present
                    if(!newCharSpot.findById(Integer.parseInt(data[spotidx])).isPresent()) {
                        newCharProc.setChargingSpot(null);
                    }
                    else {
                        newCharProc.setChargingSpot((newCharSpot.findById(Integer.parseInt(data[spotidx]))).get());
                    }
                    //findbyid returns optional so we check if it is present
                    if(!newCharStation.findById(Integer.parseInt(data[stationidx])).isPresent()) {
                        newCharProc.setChargingStation(null);
                    }
                    else {
                        newCharProc.setChargingStation((newCharStation.findById(Integer.parseInt(data[stationidx]))).get());
                    }
                    //findbyid returns optional so we check if it is present 
                    if(!newUser.findById(Integer.parseInt(data[useridx])).isPresent()) {
                        newCharProc.setUser(null);  
                    }
                    else {
                        newCharProc.setUser((newUser.findById(Integer.parseInt(data[useridx]))).get());  
                    }
                    newRepository.save(newCharProc);
                }
            }  
            totalSessionsInDB = newRepository.countAllProcesses();
            sessionsImported = totalSessionsInDB - totalBefore;
            Summary.put("SessionsInUploadedFile",sessionsInFile);
            Summary.put("SessionsImported",sessionsImported);
            Summary.put("TotalSessionsInDatabase",totalSessionsInDB);
            String ugly = Summary.toString();
            try{
                JsonNode toBeReturned = mapper.readTree(ugly);
                return toBeReturned;
            }
            catch(Exception e){
                JsonNode toBeReturned = null;
                return toBeReturned;
            }
        }   
        catch (IOException e)   
        {  
            throw new BadRequestException();
        }      
    }
}