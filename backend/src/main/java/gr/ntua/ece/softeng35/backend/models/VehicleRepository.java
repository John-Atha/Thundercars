package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.*;

public interface VehicleRepository extends JpaRepository<Vehicle, Integer> {

    @Query
    Optional<Vehicle> findById(Integer vehicleId);

    @Query(value = "SELECT u.vehicle.id FROM UserHasVehicle u WHERE u.user.id= ?1")
    List<Integer> findUserVehicles(Integer userId);

    @Query(value = "SELECT u.id FROM User u")
    List<Integer> findAllUsersIds();
    
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

}