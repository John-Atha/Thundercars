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

@Query(value = "SELECT u.id FROM ChargingStation u WHERE u.stationOwner.id= ?1")
List<Integer> findOwnersStationsIds(Integer stationOwnerId);

@Query(value= "SELECT u.uuid, u.currentProvider.id, u.operator.id, u.address.id, u.usageType.id, u.comments, u.dateCreated, u.statusType.id, u.submissionStatus.id, u.rating, u.costPerKwh FROM ChargingStation u WHERE u.id= ?1")
   List<List<Object>> findStationsBasicInfo(Integer stationId);

    @Query(value= "SELECT u.name FROM CurrentProvider u WHERE u.id= ?1")
    String findCurrentProviderName(Integer currentProviderId);

    @Query(value= "SELECT u.title FROM StatusType u WHERE u.id= ?1")
    String findStatusTypeTitle(Integer statusTypeId);

    @Query(value= "SELECT u.title FROM SubmissionStatus u WHERE u.id= ?1")
    String findSubmissionStatusTitle(Integer submissionStatusId);

    @Query(value= "SELECT u.title FROM UsageType u WHERE u.id= ?1")
    String findUsageTypeTitle(Integer usageTypeId);

   @Query(value= "SELECT u.id, u.title FROM Operator u WHERE u.id= ?1")
   List<List<Object>> findStationsOperatorInfo(Integer operatorId);

   @Query(value= "SELECT u.AddressLine1, u.AddressLine2, u.Town, u.StateOrProvince, u.PostCode, u.Latitude, u.Longtitude, u.ContactTelephone1, u.ContactTelephone2, u.ContactEmail, u.AccessComments, u.RelatedURL, u.GeneralComments, u.country.id, u.Title FROM Address u WHERE u.id= ?1")
   List<List<Object>> findStationsAddressInfo(Integer addressId);

   @Query(value= "SELECT u.Title, u.ISOCode, u.ContinentCode FROM Country u WHERE u.id= ?1")
   List<List<Object>> findStationsCountryInfo(Integer countryId);

   @Query(value= "SELECT u.id FROM ChargingStationSpots u WHERE u.chargingStation.id= ?1")
   List<Integer> findStationSpotsFromStation(Integer stationId);

//----------------------------------------------

    @Query(value= "SELECT MONTH(u.connectionTime), YEAR(u.connectionTime), COUNT(u.id), COUNT(DISTINCT u.user.id), SUM(u.cost), SUM(u.kwhDelivered) FROM ChargingProcess u WHERE u.chargingStation.stationOwner.id= ?1 GROUP BY MONTH(u.connectionTime), YEAR(u.connectionTime) ORDER BY u.connectionTime")
    List<List<Object>> findSessionsByStationMonth(Integer stationOwnerId);


}







