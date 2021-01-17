package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.*;



public interface StationOwnerRepository extends JpaRepository<StationOwner, Integer> {
@Query(value = "SELECT u.id FROM StationOwner u WHERE u.username= ?1 AND u.password= ?2")
List<Object> findIdByStationOwnernameAndPassword(String username, String password);
    
@Query(value = "SELECT u.id FROM StationOwner u")
List<Integer> findAllStationOwnersIds();
    
@Query(value = "SELECT u.username, u.emailAddr, u.firstName, u.lastName, u.dateOfBirth FROM StationOwner u WHERE u.id= ?1")
List<List<Object>> findInfoForStationOwner(Integer userId);
    
@Query(value = "SELECT u.address.id FROM StationOwner u WHERE u.id= ?1")
List<Integer> findAddressForStationOwner(Integer userId);
    
@Query(value = "SELECT  u.AddressLine1, u.Town, u.StateOrProvince, u.PostCode, u.ContactTelephone1, u.ContactTelephone2 FROM UserAddress u WHERE u.id= ?1")
List<List<Object>> findAddressInfoForStationOwner(Integer userAddressId);
        
@Query(value = "SELECT u.country.id FROM UserAddress u WHERE u.id= ?1")
List<Integer> findCountryForStationOwner(Integer userAddressId);
    
@Query(value = "SELECT u.Title, u.ISOCode, u.ContinentCode FROM Country u WHERE u.id= ?1")
List<List<Object>> findCountryInfoForStationOwner(Integer countryId);

@Query(value = "SELECT u.id, u.address.Title FROM ChargingStation u WHERE u.stationOwner.id= ?1")
List<List<Object>> findOwnersStations(Integer stationOwnerId);
}







