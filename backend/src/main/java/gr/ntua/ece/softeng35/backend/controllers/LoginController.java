package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.util.MultiValueMap;

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

import java.math.BigInteger; 
import java.security.MessageDigest; 
import java.security.NoSuchAlgorithmException; 


@RestController
public class LoginController{

    private final UserRepository repository;
    

    LoginController(UserRepository repository){
        this.repository = repository;
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
  
    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/{apikey}/login")
    JsonNode userLogin(@PathVariable String apikey , @RequestBody MultiValueMap credMap ) {
      CliController validator = new CliController(repository);

      if (!validator.validate(apikey)){
        throw new NotAuthorizedException();
      }

      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();

      if (credMap.getFirst("username").toString() ==null || credMap.getFirst("password").toString() == null){
        throw new BadRequestException();
      }

      String username = credMap.getFirst("username").toString();
      String password = credMap.getFirst("password").toString();
      if (username.contains("--")) {
        throw new BadRequestException();
      }
      else {
        String HashedPassword;
        HashedPassword = getMd5(password);
        
        
        List<Object> user = repository.findIdByAdminnameAndPassword(username, HashedPassword);
        if (user.size() != 0){
          Integer userId = (Integer) user.get(0);
          answer.put("Id", userId);
          answer.put("Token", "Admin");
          String ugly = answer.toString();
          try {
            JsonNode node = mapper.readTree(ugly);
            return node;
          }
          catch (Exception e){
            return null;      
          }
        }

        user = repository.findStationOwnerIdByUsernameAndPassword(username, HashedPassword);
        if (user.size()==0) {
          user = repository.findIdByUsernameAndPassword(username,HashedPassword);
          if (user.size() == 0){
            throw new BadRequestException();
          }
          else {
            Integer userId = (Integer) user.get(0);
            answer.put("Id", userId);
            answer.put("Token", "VehicleOwner");
            try {
            String ugly = answer.toString();
              JsonNode node = mapper.readTree(ugly);
              return node;
            }
            catch (Exception e){
              return null;      
            }
          }
        }
        else {
          Integer userId = (Integer) user.get(0);
          answer.put("Id", userId);
          answer.put("Token", "StationOwner");
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
}
