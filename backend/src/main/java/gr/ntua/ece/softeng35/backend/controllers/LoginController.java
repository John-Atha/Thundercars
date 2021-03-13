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

import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;
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

    private final UserRepository repository2;
    private final AdminRepository repository1;
    private final StationOwnerRepository repository3;
    

    LoginController(UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3){
        this.repository2 = repository2;
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
  
    public static String generateToken() {
      String key = new String();
      key = "";
      List<Character> chars = Arrays.asList('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
      
      Random ran = new Random();
      int randIndex = ran.nextInt(chars.size());
      for (int i=0; i<14; i++) {
          if (i==4 || i==9) {
              key += '-';
          }
          else {
              key += chars.get(ran.nextInt(chars.size()));
          }
      }
      return key;
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/login")
    JsonNode userLogin(/*@RequestHeader("X-OBSERVATORY-AUTH") String apikey ,*/ @RequestBody MultiValueMap credMap) {
      //CliController2 validator = new CliController2(repository2, repository1, repository3);

      //if (!validator.validate(apikey)){
      //  throw new NotAuthorizedException();
     // }

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
        
        
        List<Object> user = repository2.findIdByAdminnameAndPassword(username, HashedPassword);
        if (user.size() != 0){
          Integer userId = (Integer) user.get(0);
          
          String token = generateToken();
          repository1.findById(userId)
          .map(thisUser -> {
            thisUser.setApiKey(token);
            return repository1.save(thisUser);
          })
          .orElseThrow(() -> new BadRequestException());

          answer.put("Id", userId);
          answer.put("Role", "Admin");
          answer.put("Token", token);

          String ugly = answer.toString();
          try {
            JsonNode node = mapper.readTree(ugly);
            return node;
          }
          catch (Exception e){
            return null;      
          }
        }

        user = repository2.findStationOwnerIdByUsernameAndPassword(username, HashedPassword);
        if (user.size()==0) {
          user = repository2.findIdByUsernameAndPassword(username,HashedPassword);
          if (user.size() == 0){
            throw new BadRequestException();
          }
          else {
            Integer userId = (Integer) user.get(0);

            String token = generateToken();
            repository2.findById(userId)
            .map(thisUser -> {
              thisUser.setApiKey(token);
              return repository2.save(thisUser);
            })
            .orElseThrow(() -> new BadRequestException());
  
           
            answer.put("Id", userId);
            answer.put("Role", "VehicleOwner");
            answer.put("Token", token);
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
          
          String token = generateToken();
          repository3.findById(userId)
          .map(thisUser -> {
            thisUser.setApiKey(token);
            return repository3.save(thisUser);
          })
          .orElseThrow(() -> new BadRequestException());
          
          answer.put("Id", userId);
          answer.put("Role", "StationOwner");
          answer.put("Token", token);
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
