package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.*;
    
public interface ChargingSpotRepository extends JpaRepository<ChargingSpot, Integer> {

    @Query(value= "SELECT u.id FROM ChargingStationSpots u ORDER BY u.id")
    List<Integer> findAllStationSpotsIds();

    @Query(value = "SELECT u.chargingStation.id FROM ChargingStationSpots u WHERE u.id = ?1")
    Integer findStationFromTogether(Integer chargingStationSpots);

    @Query(value = "SELECT u.chargingSpot.id FROM ChargingStationSpots u WHERE u.id = ?1")
    Integer findSpotFromTogether(Integer chargingStationSpots);

    @Query(value = "SELECT u.address.id FROM ChargingStation u WHERE u.id= ?1")
    Integer findStationAddress(Integer stationId);

    @Query(value = "SELECT u.Title FROM Address u WHERE u.id= ?1")
    String findStationAddressTitle(Integer addressId);


    @Query(value = "SELECT u.connectionType.id, u.level.id, u.currentType.id, u.amps, u.voltage, u.powerkw, u.comments FROM ChargingSpot u WHERE u.id= ?1")
    List<List<Object>> findSpotInfo(Integer spotId);
    
    @Query(value = "SELECT u.title FROM ConnectionType u WHERE u.id= ?1")
    String findConnectionTypeTitle(Integer connectionTypeId);

    @Query(value = "SELECT u.title, u.comments, u.isFastChargeCapable FROM Level u WHERE u.id= ?1")
    List<List<Object>> findLevelInfo(Integer levelId);

    @Query(value = "SELECT u.title FROM CurrentType u WHERE u.id= ?1")
    String findCurrentTypeTitle(Integer currentTypeId);


}