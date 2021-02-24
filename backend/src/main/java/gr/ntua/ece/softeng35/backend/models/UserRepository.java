package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.*;

public interface UserRepository extends JpaRepository<User, Integer> {

    User findByUsername(String username);
    
    @Query(value = "SELECT u.username FROM User u ORDER BY u.id")
    List<String> findAllUsernames();

    @Query(value = "SELECT u.id FROM User u WHERE u.username= ?1 AND u.password= ?2")
    List<Object> findIdByUsernameAndPassword(String username, String password);
 
    @Query(value = "SELECT u.id FROM StationOwner u WHERE u.username= ?1 AND u.password= ?2")
    List<Object> findStationOwnerIdByUsernameAndPassword(String username, String password);

    @Query(value = "SELECT u.id FROM Admin u WHERE u.username= ?1 AND u.password= ?2")
    List<Object> findIdByAdminnameAndPassword(String username, String password);

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

    @Query( value = "SELECT u.vehicle.id FROM UserHasVehicle u WHERE u.id= ?1")
    Integer findVehicleByUserVehicle(Integer userVehicleId);
    
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

    @Query(value = "SELECT u.chargingSpot.id, COUNT(*), SUM(u.cost), SUM(u.kwhDelivered) FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.user.id=?2")
    List<List<Object>> findBySumsByStationForUser(Integer chargingStation , Integer userId);

    @Query(value = "SELECT u.id, u.chargingStation.id, u.chargingStation.operator.title, CURRENT_TIME, COUNT( DISTINCT u.chargingSpot.id), u.chargingSpot.id, u.vehicle.model , u.chargingStation.address.Title, u.chargingStation.address.AddressLine1, u.vehicle.id ,u.chargingStation.operator.id FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.user.id = ?2")
    List<List<Object>> findByStationForUser(Integer chargingStation , Integer userId);

    @Query(value = "SELECT u.id,u.chargingProgram,u.connectionTime,u.cost,u.disconnectTime,u.doneChargingTime,u.kwhDelivered,u.paymentWay,u.rating FROM ChargingProcess u WHERE u.chargingStation.id = ?1 AND u.user.id = ?2 ORDER BY u.connectionTime")
    List<List<Object>> findByStationByUser(Integer chargingStation , Integer userId);

    @Query(value = "SELECT u.id,u.chargingProgram,u.connectionTime,u.cost,u.disconnectTime,u.doneChargingTime,u.kwhDelivered,u.paymentWay,u.rating, u.chargingStation.id , u.chargingStation.operator.title, u.chargingStation.address.Title, u.chargingStation.address.AddressLine1, u.vehicle.model, u.vehicle.id FROM ChargingProcess u WHERE u.user.id = ?1 ORDER BY u.connectionTime DESC")
    List<List<Object>> findByProcessesByUser(Integer userId);

    @Query(value = "SELECT u.chargingStation.id, COUNT(u.chargingStation.id),u.chargingStation.operator.id, u.chargingStation.operator.title, u.chargingStation.address.Title, u.chargingStation.address.AddressLine1, u.chargingStation.address.ContactTelephone1 FROM ChargingProcess u WHERE u.user.id = ?1 GROUP BY u.chargingStation.id ")
    List<List<Object>> findByStationsVisitedByUser(Integer userId) ;

    @Query(value = "SELECT DISTINCT u.chargingStation.currentProvider.id , u.chargingStation.currentProvider.name from ChargingProcess u WHERE u.user.id = ?1")
    List<List<Object>> findByProviderVisitedByUser(Integer userId);

    @Query(value = "SELECT u.chargingStation.currentProvider.id,u.chargingStation.currentProvider.name, SUM(u.kwhDelivered) , SUM(u.cost), AVG(u.chargingStation.costPerKwh), CURRENT_TIME FROM ChargingProcess u WHERE u.user.id = ?1 AND u.chargingStation.currentProvider.id = ?2 ORDER BY u.connectionTime DESC")
    List<List<Object>> findBySumsByProvider (Integer userId,Integer providerId);

    @Query(value = "SELECT u.id,u.chargingProgram,u.connectionTime,u.cost,u.disconnectTime,u.doneChargingTime,u.kwhDelivered,u.paymentWay,u.rating, u.chargingStation.id , u.chargingStation.operator.title, u.chargingStation.address.Title, u.chargingStation.address.AddressLine1, u.vehicle.model, u.vehicle.id FROM ChargingProcess u WHERE u.user.id = ?1 AND u.chargingStation.currentProvider.id = ?2 ORDER BY u.connectionTime DESC")
    List<List<Object>> findByProcessesByProvider (Integer userId,Integer providerId);

    @Query(value = "SELECT u.vehicle.id,u.vehicle.brand,u.vehicle.model,u.vehicle.type,count(u.vehicle.id),sum(u.kwhDelivered),sum(u.cost) FROM ChargingProcess u WHERE u.user.id =?1 GROUP BY u.vehicle.id")
    List<List<Object>> findByVehicleByUser(Integer userId);
    //for per vehicles
    @Query(value = "SELECT u.id,u.chargingProgram,u.connectionTime,u.cost,u.disconnectTime,u.doneChargingTime,u.kwhDelivered,u.paymentWay,u.rating, u.chargingStation.id , u.chargingStation.operator.title, u.chargingStation.address.Title, u.chargingStation.address.AddressLine1, u.vehicle.model, u.vehicle.id FROM ChargingProcess u WHERE u.user.id = ?1 AND u.vehicle.id = ?2 ORDER BY u.connectionTime DESC")
    List<List<Object>> findByProcessesByVehicle (Integer userId,Integer vehicleId);

    @Query(value = "SELECT u.vehicle.id,u.vehicle.brand,u.vehicle.model,u.vehicle.type,count(u.vehicle.id),sum(u.kwhDelivered),sum(u.cost) FROM ChargingProcess u WHERE u.user.id =?1 AND u.vehicle.id = ?2")
    List<List<Object>> findBySpecificVehicleByUser(Integer userId,Integer vehicleId);


//---------------------

    @Query(value = "SELECT u.id FROM AcCharger u ORDER BY u.id")
    List<Integer> findAllAcChargersIds();

    @Query(value = "SELECT u.id FROM DcCharger u ORDER BY u.id")
    List<Integer> findAllDcChargersIds();



}
