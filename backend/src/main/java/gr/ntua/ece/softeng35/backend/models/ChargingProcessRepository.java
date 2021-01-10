package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.web.bind.annotation.*;

public interface ChargingProcessRepository extends JpaRepository<ChargingProcess, Integer> {
  
    @Query(value = "SELECT u.id, u.chargingStation.id, u.chargingStation.operator.title, CURRENT_TIME, u.kwhDelivered, COUNT( DISTINCT u.chargingSpot.id), u.chargingSpot.id FROM ChargingProcess u WHERE u.chargingStation.id = ?1 ORDER BY u.chargingSpot.id")
    List<List<Object>> findByStation(Integer chargingStation);

    @Query(value = "SELECT u.chargingSpot.id, COUNT(*), SUM(u.kwhDelivered) FROM ChargingProcess u WHERE u.chargingStation.id = ?1 GROUP BY u.chargingSpot.id")
    List<List<Object>> findByStationGroupPoints(Integer chargingStation);
//--------------------------------------    
//--------------------------------------    
    @Query(value = "SELECT u.id, u.chargingStation.id, u.chargingStation.operator.title, CURRENT_TIME, u.kwhDelivered, COUNT( DISTINCT u.chargingSpot.id), u.chargingSpot.id FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.connectionTime >= ?2 ORDER BY u.chargingSpot.id")
    List<List<Object>> findByStationAndStartDate(Integer chargingStation, Date connectionTime);

    @Query(value = "SELECT u.chargingSpot.id, COUNT(*), SUM(u.kwhDelivered) FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.connectionTime >= ?2 GROUP BY u.chargingSpot.id")
    List<List<Object>> findByStationStartDateGroupPoints(Integer chargingStation, Date connectionTime);
//---------------------------------------
//---------------------------------------
    @Query(value = "SELECT u.id, u.chargingStation.id, u.chargingStation.operator.title, CURRENT_TIME, u.kwhDelivered, COUNT( DISTINCT u.chargingSpot.id), u.chargingSpot.id FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.connectionTime >= ?2 AND u.disconnectTime <= ?3 ORDER BY u.chargingSpot.id")
    List<List<Object>> findByStationAndTimestamp(Integer chargingStation, Date connectionTime, Date disconnectTime);

    @Query(value = "SELECT u.chargingSpot.id, COUNT(*), SUM(u.kwhDelivered) FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.connectionTime >= ?2 AND u.disconnectTime <= ?3 GROUP BY u.chargingSpot.id")
    List<List<Object>> findByStationBothDatesGroupPoints(Integer chargingStation, Date connectionTime, Date disconnectTime);
}