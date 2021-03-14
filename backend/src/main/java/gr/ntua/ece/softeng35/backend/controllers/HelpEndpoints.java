package gr.ntua.ece.softeng35.backend.controllers;

import java.lang.*;
import java.util.*;
import org.json.*;

import java.math.BigInteger; 
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException; 

import org.springframework.web.bind.annotation.*;
import org.springframework.http.*;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.node.*;

import gr.ntua.ece.softeng35.backend.models.User;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

import gr.ntua.ece.softeng35.backend.models.ChargingProcess;
import gr.ntua.ece.softeng35.backend.models.ChargingProcessRepository;

import gr.ntua.ece.softeng35.backend.models.Admin;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;

import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

@RestController
public class HelpEndpoints {
    private final UserRepository repository2;
    private final ChargingProcessRepository repositoryProcess;
    private final AdminRepository repository1;
    private final StationOwnerRepository repository3;

    HelpEndpoints(UserRepository repository2, ChargingProcessRepository repositoryProcess, AdminRepository repository1, StationOwnerRepository repository3) {
        this.repository2 = repository2;
        this.repositoryProcess = repositoryProcess;
        this.repository1 = repository1;
        this.repository3 = repository3;
    }

    public static String getMd5(String input) 
    { 
        try { 
  
            // Static getInstance method is called with hashing MD5 
            MessageDigest md = MessageDigest.getInstance("MD5"); 
  
            // digest() method is called to calculate message digest 
            //  of an input digest() return array of byte 
            byte[] messageDigest = md.digest(input.getBytes()); 
  
            // Convert byte array into signum representation 
            BigInteger no = new BigInteger(1, messageDigest); 
  
            // Convert message digest into hex value 
            String hashtext = no.toString(16); 
            while (hashtext.length() < 32) { 
                hashtext = "0" + hashtext; 
            } 
            return hashtext; 
        }  
  
        // For specifying wrong message digest algorithms 
        catch (NoSuchAlgorithmException e) { 
            throw new RuntimeException(e); 
        } 
    }

    /*Health check endpoint for CLI Usage. This endpoint ensures the end to end connectivity of the Database.*/
    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/evcharge/api/admin/healthcheck")
    JsonNode healthcheck(/*@RequestHeader("X-OBSERVATORY-AUTH") String apikey*/) {

       // CliController2 validator = new CliController2(repository2, repository1, repository3);

       // if (!validator.validate(apikey)){
       //     throw new NotAuthorizedException();
       // }

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode healthcheckReport = mapper.createObjectNode();

        //List<Integer> FoundApiKey = repository2.findAdminByApiKey("123456789");
        List<Integer> FoundApiKey = repository2.findAdminByApiKey("1234-5678-9123");

        if(FoundApiKey.size() > 0) {
            healthcheckReport.put("status","OK");
        }
        else {
            healthcheckReport.put("status","failed");
        }

        String healthcheckString = healthcheckReport.toString();

        try {
            JsonNode node = mapper.readTree(healthcheckString);
            return node;
        }
        catch (Exception e) {
            JsonNode node = null;
            return node;
        }
    }

    /*Reset sessions endpoint for CLI Usage. This endpoint deletes all entries from the ChargingProcess table of the Database
    and initializes the Admin table with the default Administrator Account.*/

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/admin/resetsessions")
    JsonNode resetsessions(/*@RequestHeader("X-OBSERVATORY-AUTH") String apikey*/) {
        //CliController2 validator = new CliController2(repository2, repository1, repository3);

        //if (!validator.validate(apikey)){
        //    throw new NotAuthorizedException();
        //}

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode resetSessions = mapper.createObjectNode();

        String password = getMd5("petrol4ever");

        //Endpoint Main Actions
        repositoryProcess.deleteAllFromChargingProcess();
        repository1.updateHeadAdminFromAdmin("admin",password,"123456789");

        Long countAfter = repositoryProcess.countAllProcesses();
        
        List<List<String>> headAdminAfter = repository1.findHeadAdminByApiKey("123456789");
        String username = headAdminAfter.get(0).get(0);
        String password2 = headAdminAfter.get(0).get(1);

        if ((countAfter == 0L) && (username.equals("admin")) && (password2.equals(password))) {
            resetSessions.put("status","OK");
        }
        else {
            resetSessions.put("status","failed");
        }

        String resetSessionsString = resetSessions.toString();

        try {
            JsonNode node = mapper.readTree(resetSessionsString);
            return node;
        }
        catch (Exception e) {
            JsonNode node = null;
            return node;
        }
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/evcharge/api/admin/auth")
    JsonNode authorize(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {

        CliController2 validator = new CliController2(repository2, repository1, repository3);

        if (!validator.validate(apikey)){
            throw new NotAuthorizedException();
        }

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode healthcheckReport = mapper.createObjectNode();

        List<Integer> FoundApiKey = repository2.findAdminByApiKey("1234-5678-9123");

        if(FoundApiKey.size() > 0) {
            healthcheckReport.put("status","OK");
        }
        else {
            healthcheckReport.put("status","failed");
        }

        String healthcheckString = healthcheckReport.toString();

        try {
            JsonNode node = mapper.readTree(healthcheckString);
            return node;
        }
        catch (Exception e) {
            JsonNode node = null;
            return node;
        }
    }

}