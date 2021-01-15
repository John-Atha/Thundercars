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
    @PostMapping("/evcharge/api/login")
    JsonNode userLogin(@RequestBody String encoded) {
      ObjectMapper mapper = new ObjectMapper();
      ObjectNode answer = mapper.createObjectNode();
      String[] parts = encoded.split(":");
      String username = parts[0];
      String password = parts[1];
      if (password.length()==0 || username.contains("--")) {
        throw new BadRequestException();
      }
      else {
          /* hash password */
        String hashedPassword = "";
        hashedPassword = getMd5(password);
  
        List<Object> user = repository.findIdByUsernameAndPassword(username, getMd5(password));
        if (user.size()==0) {
          throw new BadRequestException();
        }
        else {
          Integer userId = (Integer) user.get(0);
          answer.put("Id", userId);
          answer.put("Token", "FOO");
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