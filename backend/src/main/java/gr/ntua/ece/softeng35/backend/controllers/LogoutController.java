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

    private final UserRepository repository;
    private final AdminRepository repository1;
    private final StationOwnerRepository repository2;
    

    LogoutController(UserRepository repository, AdminRepository repository1, StationOwnerRepository repository2){
        this.repository = repository;
        this.repository1 = repository1;
        this.repository2 = repository2;
    }


    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/{apikey}/logout")
    void userLogout(@PathVariable String apikey , @RequestBody String cred) {
      CliController validator = new CliController(repository);

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
        repository2.findById(userId)
        .map(thisUser -> {
            thisUser.setApiKey(null);
            return repository2.save(thisUser);
          })
          .orElseThrow(() -> new BadRequestException());
      }
      else if (role.equals("VehicleOwner")) {
        repository.findById(userId)
        .map(thisUser -> {
            thisUser.setApiKey(null);
            return repository.save(thisUser);
          })
          .orElseThrow(() -> new BadRequestException());
      }
      else {
         throw new BadRequestException();
      }
      

    }
}
        