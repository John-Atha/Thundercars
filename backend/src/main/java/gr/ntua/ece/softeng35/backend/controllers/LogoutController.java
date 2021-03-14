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
public class LogoutController{

    private final UserRepository repository2;
    private final AdminRepository repository1;
    private final StationOwnerRepository repository3;
    

    LogoutController(UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3){
        this.repository2 = repository2;
        this.repository1 = repository1;
        this.repository3 = repository3;
    }


    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/logout")
    void userLogout(@RequestHeader("X-OBSERVATORY-AUTH") String apikey , @RequestBody String cred) {
      CliController2 validator = new CliController2(repository2, repository1, repository3);

      if (!validator.validate(apikey)) {
        throw new NotAuthorizedException();
      }

      String[] parts = cred.split(":");
      Integer userId = Integer.parseInt(parts[0]); 
      String role = parts[1].toString();

      if (role.equals("Admin")) {
        repository1.findById(userId)
        .map(thisUser -> {
            thisUser.setApiKey(null);
            return repository1.save(thisUser);
          })
          .orElseThrow(() -> new BadRequestException());
      }
      else if (role.equals("StationOwner")) {
        repository3.findById(userId)
        .map(thisUser -> {
            thisUser.setApiKey(null);
            return repository3.save(thisUser);
          })
          .orElseThrow(() -> new BadRequestException());
      }
      else if (role.equals("VehicleOwner")) {
        repository2.findById(userId)
        .map(thisUser -> {
            thisUser.setApiKey(null);
            return repository2.save(thisUser);
          })
          .orElseThrow(() -> new BadRequestException());
      }
      else {
         throw new BadRequestException();
      }
      

    }
}
        