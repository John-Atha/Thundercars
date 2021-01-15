package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.web.bind.annotation.*;

public interface UserRepository extends JpaRepository<User, Integer> {

    @Query(value = "SELECT u.id FROM User u")
    List<Integer> findAllUsersIds();

    @Query(value = "SELECT u.username, u.emailAddr, u.firstName, u.lastName, u.dateOfBirth FROM User u WHERE u.id= ?1")
    List<List<Object>> findInfoForUser(Integer userId);

    @Query(value = "SELECT u.address.id FROM User u WHERE u.id= ?1")
    List<Integer> findAddressForUser(Integer userId);

    @Query(value = "SELECT  u.AddressLine1, u.Town, u.StateOrProvince, u.PostCode, u.ContactTelephone1, u.ContactTelephone2 FROM UserAddress u WHERE u.id= ?1")
    List<List<Object>> findAddressInfoForUser(Integer userAddressId);
    
    @Query(value = "SELECT u.country.id FROM UserAddress u WHERE u.id= ?1")
    List<Integer> findCountryForUser(Integer userAddressId);

    @Query(value = "SELECT u.Title, u.ISOCode, u.ContinentCode FROM Country u WHERE u.id= ?1")
    List<List<Object>> findCountryInfoForUser(Integer countryId);

    //---------------------------------------------------------

    @Query(value = "SELECT u.vehicle.id FROM UserHasVehicle u WHERE u.user.id= ?1")
    List<Integer> findUserVehicles(Integer userId);

    @Query(value= "SELECT u.brand, u.type, u.model, u.releaseYear, u.usableBatterySize, u.energyConsumption FROM Vehicle u WHERE u.id= ?1")
    List<List<Object>> findVehicleBasics(Integer vehicleId);

    @Query(value= "SELECT u.acCharger.id FROM Vehicle u WHERE u.id= ?1")
    List<Integer> findVehicleAcCharger(Integer vehicleId);

    @Query(value = "SELECT u.portname FROM AcChargerPort u  WHERE u.acCharger.id= ?1")
    List<String> findAcChargerPortNames(Integer acChargerId);

    @Query(value = "SELECT u.portname FROM DcChargerPort u  WHERE u.dcCharger.id= ?1")
    List<String> findDcChargerPortNames(Integer dcChargerId);

    @Query(value = "SELECT u.dcCharger.id FROM Vehicle u WHERE u.id= ?1")
    List<Integer> findVehicleDcCharger(Integer vehicleId);

    @Query(value = "SELECT u.usablePhases, u.maxPower FROM AcCharger u WHERE u.id= ?1")
    List<List<Object>> findAcChargerBasics(Integer acChargerId);

    @Query(value = "SELECT u.maxPower FROM DcCharger u WHERE u.id= ?1")
    List<Object> findDcChargerBasics(Integer dcChargerId);

    @Query(value = "SELECT u.point20, u.point23, u.point37, u.point74, u.point110, u.point160, u.point220, u.point430 FROM PowerPerChargingPoint u WHERE u.acCharger.id= ?1")
    List<List<Double>> findAcChargerPowerPerChargingPoint(Integer acChargerId);

}