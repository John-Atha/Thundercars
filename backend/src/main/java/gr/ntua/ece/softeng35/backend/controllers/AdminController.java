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

import gr.ntua.ece.softeng35.backend.models.AdminRepository;

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
    
    private final UserRepository repository2;
    private final StationOwnerRepository repository3;
    private final AdminRepository repository1;

    AdminController(UserRepository repository2, StationOwnerRepository repository3, AdminRepository repository1){
        this.repository1 = repository1;
        this.repository2 = repository2;
        this.repository3 = repository3;
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
    @GetMapping("/evcharge/api/admin/users/{username}")
    User oneUser(@PathVariable String username, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
        CliController2 validator = new CliController2(repository2, repository1, repository3);

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
    @GetMapping("/evcharge/api/admin/stationowners/{username}")
    StationOwner oneOwner(@PathVariable String username, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
        CliController2 validator = new CliController2(repository2, repository1, repository3);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        if (repository3.findByUsername(username)!=null) {
            return repository3.findByUsername(username);
        }
        else {
            throw new NoDataFoundException();
        }
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/admin/usermod/{username}/{password}")
    User newUser(@PathVariable String username,
                 @PathVariable String password,
                 @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
        CliController2 validator = new CliController2(repository2, repository1, repository3);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }             
        List<String> Usernames = repository2.findAllUsernames();
        if (Usernames.contains(username)) {
            User user1 = repository2.findByUsername(username);
            String givenPassword = password;
            String newPassword =  getMd5(givenPassword);
            user1.setPassword(newPassword);
            return repository2.save(user1);
        }
        else {
            User newUser = new User();
            newUser.setUsername(username);
            String newPassword = getMd5(password);
            newUser.setPassword(newPassword);
            return repository2.save(newUser);
        }
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/admin/stationownermod/{username}/{password}")
    StationOwner newOwner(@PathVariable String username,
                 @PathVariable String password,
                 @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {

        CliController2 validator = new CliController2(repository2, repository1, repository3);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        List<String> Usernames = repository3.findAllUsernames();
        if (Usernames.contains(username)) {
            StationOwner user1 = repository3.findByUsername(username);
            String givenPassword = password;
            String newPassword =  getMd5(givenPassword);
            user1.setPassword(newPassword);
            return repository3.save(user1);
        }
        else {
            StationOwner newUser = new StationOwner();
            newUser.setUsername(username);
            String newPassword = getMd5(password);
            newUser.setPassword(newPassword);
            return repository3.save(newUser);
        }
    }
}
