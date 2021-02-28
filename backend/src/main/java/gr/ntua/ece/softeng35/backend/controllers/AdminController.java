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

import gr.ntua.ece.softeng35.backend.models.StationOwner;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;
import java.math.*;
import java.lang.*;
import org.json.*;

import java.math.BigInteger; 
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException; 


@RestController
public class AdminController{
    
    private final UserRepository repository;
    private final StationOwnerRepository repository2;

    AdminController(UserRepository repository, StationOwnerRepository repository2){
        this.repository = repository;
        this.repository2 = repository2;
    }

    
    public static String getMd5(String input) { 
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
    

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/evcharge/api/{apikey}/admin/users/{username}")
    User oneUser(@PathVariable String username, @PathVariable String apikey) {
        CliController validator = new CliController(repository);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        if (repository.findByUsername(username)!=null) {
            return repository.findByUsername(username);
        }
        else {
            throw new NoDataFoundException();
        }
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/evcharge/api/{apikey}/admin/stationowners/{username}")
    StationOwner oneOwner(@PathVariable String username, @PathVariable String apikey) {
        CliController validator = new CliController(repository);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        if (repository2.findByUsername(username)!=null) {
            return repository2.findByUsername(username);
        }
        else {
            throw new NoDataFoundException();
        }
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/{apikey}/admin/usermod/{username}/{password}")
    User newUser(@PathVariable String username,
                 @PathVariable String password,
                 @PathVariable String apikey) {
        CliController validator = new CliController(repository);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }             
        List<String> Usernames = repository.findAllUsernames();
        if (Usernames.contains(username)) {
            User user1 = repository.findByUsername(username);
            String givenPassword = password;
            String newPassword =  getMd5(givenPassword);
            user1.setPassword(newPassword);
            return repository.save(user1);
        }
        else {
            User newUser = new User();
            newUser.setUsername(username);
            String newPassword = getMd5(password);
            newUser.setPassword(newPassword);
            return repository.save(newUser);
        }
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/{apikey}/admin/stationownermod/{username}/{password}")
    StationOwner newOwner(@PathVariable String username,
                 @PathVariable String password,
                 @PathVariable String apikey) {

        CliController validator = new CliController(repository);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        List<String> Usernames = repository2.findAllUsernames();
        if (Usernames.contains(username)) {
            StationOwner user1 = repository2.findByUsername(username);
            String givenPassword = password;
            String newPassword =  getMd5(givenPassword);
            user1.setPassword(newPassword);
            return repository2.save(user1);
        }
        else {
            StationOwner newUser = new StationOwner();
            newUser.setUsername(username);
            String newPassword = getMd5(password);
            newUser.setPassword(newPassword);
            return repository2.save(newUser);
        }
    }
}
