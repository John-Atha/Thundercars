package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Admin;
import gr.ntua.ece.softeng35.backend.models.StationOwner;
import gr.ntua.ece.softeng35.backend.models.User;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

public class CliController{
    
    private final UserRepository repository;
    
    CliController(UserRepository repository){
        this.repository = repository;
    }
    
    Boolean validate(String apikey){
        List<Integer> exists = repository.findAdminByApiKey(apikey);
        if (exists.size()!= 0){
            return true;
        }
        exists = repository.findStationOwnerByApiKey(apikey);
        if (exists.size() != 0){
            return true;
        }
        exists = repository.findUserByApiKey(apikey);
        if (exists.size()!=0){
            return true;
        }
        return false;
    }
}
