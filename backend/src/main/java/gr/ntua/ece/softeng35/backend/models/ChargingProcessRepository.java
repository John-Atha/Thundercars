package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.web.bind.annotation.*;

public interface ChargingProcessRepository extends JpaRepository<ChargingProcess, Integer> {

    /*@Query(value = "SELECT id FROM ChargingProcess u WHERE u.chargingStation_id= ?1", nativeQuery=true)
    List<Integer> findByChargingStation_Id(Integer chargingStation);
    List<Integer> findByChargingStation_IdAndConnectionTimeGreaterThanEqualAndDisconnectTimeLessThanEqual(Integer chargingStation, Date connectionTime, Date disconnectTime);
    List<Integer> findByChargingStation_IdAndConnectionTimeGreaterThanEqual(Integer chargingStation, Date connectionTime);
    */
    
    @Query(value = "SELECT id FROM ChargingProcess u WHERE u.chargingStation.id = ?1")
    List<Integer> findByChargingStation_Id(Integer chargingStation);

    @Query(value = "SELECT id FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.connectionTime >= ?2")
    List<Integer> findByChargingStation_IdAndConnectionTimeGreaterThanEqual(Integer chargingStation, Date connectionTime);

    @Query(value = "SELECT id FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.connectionTime >= ?2 AND u.disconnectTime <= ?3")
    List<Integer> findByChargingStation_IdAndConnectionTimeGreaterThanEqualAndDisconnectTimeLessThanEqual(Integer chargingStation, Date connectionTime, Date disconnectTime);
    
    /*List<Integer> findByStation(Integer chargingStation);

    //@Query(value = "select a from ChargingProcess a where a.chargingStation= :")
    List<Integer> findByStationAndBothDates(Integer chargingStation, Date connectionTime, Date disconnectTime);
    List<Integer> findByStationAndStartDate(Integer chargingStation, Date connectionTime);
    */
}