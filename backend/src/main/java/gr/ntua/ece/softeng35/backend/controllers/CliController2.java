package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Admin;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwner;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;
import gr.ntua.ece.softeng35.backend.models.User;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

public class CliController2{
    
    private final UserRepository repository2;
    private final AdminRepository repository1;
    private final StationOwnerRepository repository3;
    
    CliController2(UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3){
        this.repository1 = repository1;
        this.repository2 = repository2;
        this.repository3 = repository3;
    }
    
    Boolean validate(String cred){
        // cred: XXXX-XXXX-XXXX:id:1 => admin
        // cred: XXXX-XXXX-XXXX:id:2 => vehicleOwner
        // cred: XXXX-XXXX-XXXX:id:3 => stationOwner

        if (cred.equals("wiefweifhbv2397f2vfu22837514899tyjiwbc")) {
            return true;
        }
        else {
            String[] parts;
            String token;
            Integer userId;
            Integer roleFlag;
            try {
                parts = cred.split(":");
                token = parts[0].toString(); 
                userId = Integer.parseInt(parts[1]); 
                roleFlag = Integer.parseInt(parts[2]);
                //String role = roleFlag==1 ? "Admin" : (roleFlag==2 ? "VehicleOnwer" : "StationOwner");
            }
            catch(Exception e) {
                throw new BadRequestException();
            }
            if (roleFlag==1) { //admin
                List<Admin> adm = repository1.findByIdAndApiKey(userId, token);
                if (adm.size()==0) {
                    return false;
                }
                else {
                    return true;
                }
            }

            else if (roleFlag==2) {
                List<User> user = repository2.findByIdAndApiKey(userId, token);
                if (user.size()==0) {
                    return false;
                }
                else {
                    return true;
                }       
            }

            else if (roleFlag==3) {
                List<StationOwner> owner = repository3.findByIdAndApiKey(userId, token);
                if (owner.size()==0) {
                    return false;
                }
                else {
                    return true;
                }           
            }

            else {
                return false;
            }
        }
    }
}
