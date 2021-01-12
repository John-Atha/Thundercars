package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.web.bind.annotation.*;

public interface ChargingProcessRepository extends JpaRepository<ChargingProcess, Integer> {
  
    @Query(value = "SELECT u.id, u.chargingStation.id, u.chargingStation.operator.title, CURRENT_TIME, COUNT( DISTINCT u.chargingSpot.id), u.chargingSpot.id FROM ChargingProcess u WHERE u.chargingStation.id = ?1")
    List<List<Object>> findByStation(Integer chargingStation);

    @Query(value = "SELECT u.id, u.operator.title, CURRENT_TIME FROM ChargingStation u WHERE u.id = ?1")
    List<List<Object>> findByStation2(Integer chargingStation);

    @Query(value = "SELECT u.chargingSpot.id, COUNT(*), SUM(u.kwhDelivered) FROM ChargingProcess u WHERE u.chargingStation.id = ?1 GROUP BY u.chargingSpot.id")
    List<List<Object>> findByStationGroupPoints(Integer chargingStation);
//--------------------------------------    
//--------------------------------------    
    @Query(value = "SELECT u.id, u.chargingStation.id, u.chargingStation.operator.title, CURRENT_TIME, COUNT( DISTINCT u.chargingSpot.id), u.chargingSpot.id FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.connectionTime >= ?2")
    List<List<Object>> findByStationAndStartDate(Integer chargingStation, Date connectionTime);

    @Query(value = "SELECT u.chargingSpot.id, COUNT(*), SUM(u.kwhDelivered) FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.connectionTime >= ?2 GROUP BY u.chargingSpot.id")
    List<List<Object>> findByStationStartDateGroupPoints(Integer chargingStation, Date connectionTime);
//---------------------------------------
//---------------------------------------
    @Query(value = "SELECT u.id, u.chargingStation.id, u.chargingStation.operator.title, CURRENT_TIME, COUNT( DISTINCT u.chargingSpot.id), u.chargingSpot.id FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.connectionTime >= ?2 AND u.disconnectTime <= ?3")
    List<List<Object>> findByStationAndTimestamp(Integer chargingStation, Date connectionTime, Date disconnectTime);

    @Query(value = "SELECT u.chargingSpot.id, COUNT(*), SUM(u.kwhDelivered) FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.connectionTime >= ?2 AND u.disconnectTime <= ?3 GROUP BY u.chargingSpot.id")
    List<List<Object>> findByStationBothDatesGroupPoints(Integer chargingStation, Date connectionTime, Date disconnectTime);
//---------------------------------------
//---------------------------------------
    @Query(value = "SELECT u.id FROM ChargingStationSpots u WHERE u.chargingStation.id = ?1 AND u.chargingSpot.id = ?2")
    Integer findStationSpotId(Integer chargingStation, Integer ChargingSpot);

    @Query(value = "SELECT u.chargingStation.id FROM ChargingStationSpots u WHERE u.id = ?1")
    Integer findStationFromTogether(Integer chargingStationSpots);

    @Query(value = "SELECT u.chargingSpot.id FROM ChargingStationSpots u WHERE u.id = ?1")
    Integer findSpotFromTogether(Integer chargingStationSpots);


    @Query(value = "SELECT u.operator.title FROM ChargingStation u WHERE u.id= ?1")
    String findOperator(Integer stationId);
    
    @Query(value = "SELECT CURRENT_TIME FROM ChargingStation u WHERE u.id= ?1")
    Object findTime(Integer stationId);

//---------------------------------------
//---------------------------------------
   // @Query(value = "SELECT u.id, u.chargingStation.id, u.chargingSpot.id, u.chargingStation.operator.title, CURRENT_TIME, COUNT( DISTINCT u.chargingSpot.id) FROM ChargingProcess u WHERE u.chargingStation.id = ?1 ORDER BY u.chargingSpot.id")
   // List<List<Object>> findBySpot(Integer chargingSpot);

    @Query( value = "SELECT u.id, u.connectionTime, u.doneChargingTime, u.disconnectTime, u.chargingProgram, u.kwhDelivered, u.paymentWay, u.vehicle.type FROM ChargingProcess u WHERE u.chargingStation.id= ?1 AND u.chargingSpot.id= ?2")
    List<List<Object>> findBySpotOnly(Integer chargingStation, Integer chargingSpot);

    @Query( value = "SELECT u.id, u.connectionTime, u.doneChargingTime, u.disconnectTime, u.chargingProgram, u.kwhDelivered, u.paymentWay, u.vehicle.type FROM ChargingProcess u WHERE u.chargingStation.id= ?1 AND u.chargingSpot.id= ?2 AND u.connectionTime >= ?3")
    List<List<Object>> findBySpotAndStartDate(Integer chargingStation, Integer chargingSpot, Date startDate);

    @Query( value = "SELECT u.id, u.connectionTime, u.doneChargingTime, u.disconnectTime, u.chargingProgram, u.kwhDelivered, u.paymentWay, u.vehicle.type FROM ChargingProcess u WHERE u.chargingStation.id= ?1 AND u.chargingSpot.id= ?2 AND u.connectionTime >= ?3 AND u.disconnectTime <= ?4")
    List<List<Object>> findBySpotAndBothDates(Integer chargingStation, Integer chargingSpot, Date startDate, Date endDate);

//------------------------------------
//------------------------------------

    @Query( value = "SELECT u.user.id FROM UserHasVehicle u WHERE u.id= ?1")
    Integer findUserByUserVehicle(Integer userVehicleId);

    @Query( value = "SELECT u.vehicle.id FROM UserHasVehicle u WHERE u.id= ?1")
    Integer findVehicleByUserVehicle(Integer userVehicleId);

    @Query( value = "SELECT CURRENT_TIME FROM UserHasVehicle u WHERE u.id= ?1")
    Object findTime2(Integer userHasVehicleId);

    @Query(value = "SELECT u.id, u.chargingStation.currentProvider.name, u.connectionTime, u.doneChargingTime, u.disconnectTime, u.kwhDelivered, u.chargingProgram, u.cost, u.chargingStation.id, u.chargingSpot.id FROM ChargingProcess u WHERE u.user.id= ?1 AND u.vehicle.id= ?2")
    List<List<Object>> findSessionsByUserAndVehicle(Integer userId, Integer vehicleId);

    @Query(value = "SELECT u.id, u.chargingStation.currentProvider.name, u.connectionTime, u.doneChargingTime, u.disconnectTime, u.kwhDelivered, u.chargingProgram, u.cost, u.chargingStation.id, u.chargingSpot.id FROM ChargingProcess u WHERE u.user.id= ?1 AND u.vehicle.id= ?2 AND u.connectionTime>= ?3")
    List<List<Object>> findSessionsByUserAndVehicleAndStartDate(Integer userId, Integer vehicleId, Date startDate);

    @Query(value = "SELECT u.id, u.chargingStation.currentProvider.name, u.connectionTime, u.doneChargingTime, u.disconnectTime, u.kwhDelivered, u.chargingProgram, u.cost, u.chargingStation.id, u.chargingSpot.id FROM ChargingProcess u WHERE u.user.id= ?1 AND u.vehicle.id= ?2 AND u.connectionTime>= ?3 AND u.disconnectTime<= ?4")
    List<List<Object>> findSessionsByUserAndVehicleAndBothDates(Integer userId, Integer vehicleId, Date startDate, Date endDate);

//------------------------------------
//------------------------------------

    @Query( value = "SELECT u.chargingStation.id, u.id, u.vehicle.id, u.connectionTime, u.doneChargingTime, u.disconnectTime, u.kwhDelivered, u.chargingProgram, u.cost, u.user.id FROM ChargingProcess u WHERE u.chargingStation.currentProvider.id= ?1")
    List<List<Object>> findSessionsByProvider(Integer providerId);

    @Query( value = "SELECT u.chargingStation.id, u.id, u.vehicle.id, u.connectionTime, u.doneChargingTime, u.disconnectTime, u.kwhDelivered, u.chargingProgram, u.cost, u.user.id FROM ChargingProcess u WHERE u.chargingStation.currentProvider.id= ?1 AND connectionTime>= ?2")
    List<List<Object>> findSessionsByProviderAndStartDate(Integer providerId, Date startDate);
    
    @Query( value = "SELECT u.chargingStation.id, u.id, u.vehicle.id, u.connectionTime, u.doneChargingTime, u.disconnectTime, u.kwhDelivered, u.chargingProgram, u.cost, u.user.id FROM ChargingProcess u WHERE u.chargingStation.currentProvider.id= ?1 AND connectionTime>= ?2 AND doneChargingTime<= ?3")
    List<List<Object>> findSessionsByProviderAndBothDates(Integer providerId, Date startDate, Date endDate);
    
    
    @Query( value = "SELECT u.name FROM CurrentProvider u WHERE u.id= ?1")
    String findProviderNameById(Integer providerId);

    @Query(value = "SELECT u.id FROM UserHasVehicle u WHERE u.vehicle.id= ?1 AND u.user.id= ?2")
    List<Integer> findUserHasVehicleIdByVehicleAndUser(Integer vehicleId, Integer userId);

}