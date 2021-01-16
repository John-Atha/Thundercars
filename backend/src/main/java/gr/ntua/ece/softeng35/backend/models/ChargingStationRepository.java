package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.web.bind.annotation.*;

public interface ChargingStationRepository extends JpaRepository<ChargingStation, Integer> {

   @Query(value= "SELECT u.id FROM ChargingStation u")
   List<Integer> findAllStationsIDs();

   @Query(value= "SELECT u.uuid, u.currentProvider.name, u.operator.id, u.address.id, u.usageType.title, u.comments, u.dateCreated, u.statusType.title, u.submissionStatus.title, u.rating, u.costPerKwh FROM ChargingStation u WHERE u.id= ?1")
   List<List<Object>> findStationsBasicInfo(Integer stationId);

   @Query(value= "SELECT u.id, u.title FROM Operator u WHERE u.id= ?1")
   List<List<Object>> findStationsOperatorInfo(Integer operatorId);

   @Query(value= "SELECT u.AddressLine1, u.AddressLine2, u.Town, u.StateOrProvince, u.PostCode, u.Latitude, u.Longtitude, u.ContactTelephone1, u.ContactTelephone2, u.ContactEmail, u.AccessComments, u.RelatedURL, u.GeneralComments, u.country.id FROM Address u WHERE u.id= ?1")
   List<List<Object>> findStationsAddressInfo(Integer addressId);

   @Query(value= "SELECT u.Title, u.ISOCode, u.ContinentCode FROM Country u WHERE u.id= ?1")
   List<List<Object>> findStationsCountryInfo(Integer countryId);

//------------------------------------------
    @Query(value= "SELECT u.chargingStation.id, u.connectionTime, u.kwhDelivered, u.cost  FROM ChargingProcess u WHERE u.user.id= ?1 ORDER BY u.connectionTime")
    List<List<Object>> findSessionsByUser(Integer userId);

    @Query(value= "SELECT u.id FROM User u")
    List<Integer> findAllUsers();

    @Query(value= "SELECT MONTH(u.connectionTime), YEAR(u.connectionTime), COUNT(u.id), COUNT(DISTINCT u.chargingStation.id), SUM(u.kwhDelivered), SUM(u.cost) FROM ChargingProcess u WHERE u.user.id= ?1 GROUP BY MONTH(u.connectionTime), YEAR(u.connectionTime) ORDER BY u.connectionTime")
    List<List<Object>> findSessionsByUserMonth(Integer userId);






}