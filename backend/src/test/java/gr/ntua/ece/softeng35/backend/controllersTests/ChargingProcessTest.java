package gr.ntua.ece.softeng35.backend;

import gr.ntua.ece.softeng35.backend.models.*;
import gr.ntua.ece.softeng35.backend.controllers.*;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.*;
import static org.junit.jupiter.api.Assertions.*;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.*;
import org.springframework.boot.test.mock.mockito.MockBean;


import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.http.*;
import org.springframework.beans.factory.annotation.*;
import org.springframework.context.annotation.*;
import org.springframework.boot.autoconfigure.domain.*;
import org.springframework.data.jpa.repository.config.*;

import static org.hamcrest.Matchers.*; 
import org.mockito.*;

import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.node.*;

import java.lang.*;
import java.util.*;
import java.math.*;
import org.json.*;

import java.text.DateFormat;  
import java.text.SimpleDateFormat;  
import java.time.LocalDateTime;    
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;


@WebMvcTest(ChargingProcessController.class)
class ChargingProcessTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private ChargingProcessRepository repository;

    @MockBean
    private UserRepository repository2;

    @MockBean
    private StationOwnerRepository repository4;

    @MockBean
    private AdminRepository repository5;

    @Test
	void testGetChargingProcess() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Date date = java.sql.Date.valueOf(LocalDate.parse("20201010", DateTimeFormatter.BASIC_ISO_DATE));
        //for vehicle
        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        DcCharger testDcCharger = new DcCharger(3,3.3,true);

        Vehicle testVehicle = new Vehicle(1,"toyota", "test_brandid", "ix", "corolla" , 1992, 1.5, 0.5, testAcCharger, testDcCharger);  

        //for user
        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        User testUser = new User("user1", "pass1", "email1" , "name1", "name2" , date, testUserAddress,"apikey" );

        //for Station
        StationOwner testStationOwner = new StationOwner(1,"user1", "pass1", "email1" , "name1", "name2" , testUserAddress,date,"apikey" );
        Operator testOperator = new Operator(1,"mytitle","myUrl","mycomms","myphone1","myphone2",false,"mybookUrl","myEmail","myFault",true);
        UsageType testUsageType = new UsageType(1,"mytitle",true);
        Address testAddress = new Address(1,"mytitle","test_address_line1","test_address_line2", "testTown", "TestState", "TestPostcode",1.2,1.2,
                                    "testPhone1", "testPhone2", "testemail","testcomms","testUrl","testGeneral",testCountry);
        StatusType testStatusType = new StatusType(1,"mytitle",true,true);
        SubmissionStatus testSubmission = new SubmissionStatus(1,"mytitle",true);
        
        ChargingStation testStation = new ChargingStation(1,"myuuid",testOperator,testUsageType,testAddress,"mycomms",date,date,date,testStatusType,testSubmission,3.1,0.23,testStationOwner);

        //for Spot
        ConnectionType testConnection = new ConnectionType(1,"mytitle","myformal","mycategory");
        Level testLevel = new Level(1,"mytitle","mycomms",true);
        CurrentType testCurrent = new CurrentType(1,"mytitle","mydescr");

        ChargingSpot testSpot = new ChargingSpot(1,testConnection,testLevel,1.2,1.2,1.2,testCurrent,"mycomms");

		ChargingProcess testChargingProcess = new ChargingProcess(1,testUser,testVehicle,testStation,testSpot,date,date,date,"local",1.2,1.2,"credit",3.1,"medium");

        List<ChargingProcess> listChargingProcess = Arrays.asList(testChargingProcess);

        BDDMockito.when(repository.findAll()).thenReturn(listChargingProcess);

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/chargingprocesses")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].user.id", is(testUser.getId())))
            .andExpect(jsonPath("$[0].user.username", is(testUser.getUsername())))
            .andExpect(jsonPath("$[0].user.password", is(testUser.getPassword())))
            .andExpect(jsonPath("$[0].user.emailAddr", is(testUser.getEmailAddr())))
            .andExpect(jsonPath("$[0].user.firstName", is(testUser.getFirstName())))
            .andExpect(jsonPath("$[0].user.lastName", is(testUser.getLastName())))
            .andExpect(jsonPath("$[0].user.apiKey", is(testUser.getapiKey())))
            .andExpect(jsonPath("$[0].user.userAddress.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$[0].user.userAddress.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$[0].user.userAddress.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$[0].user.userAddress.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$[0].user.userAddress.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$[0].user.userAddress.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$[0].user.userAddress.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$[0].user.userAddress.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$[0].user.userAddress.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$[0].user.userAddress.country.continentCode", is(testCountry.getContinentCode())))
            .andExpect(jsonPath("$[0].vehicle.id", is(testVehicle.getId())))
            .andExpect(jsonPath("$[0].vehicle.brand", is(testVehicle.getBrand())))
            .andExpect(jsonPath("$[0].vehicle.brandId", is(testVehicle.getBrandId())))
            .andExpect(jsonPath("$[0].vehicle.type", is(testVehicle.getType())))
            .andExpect(jsonPath("$[0].vehicle.model", is(testVehicle.getModel())))
            .andExpect(jsonPath("$[0].vehicle.releaseYear", is(testVehicle.getReleaseYear())))
            .andExpect(jsonPath("$[0].vehicle.usableBatterySize", is(testVehicle.getUsableBatterySize())))
            .andExpect(jsonPath("$[0].vehicle.energyConsumption", is(testVehicle.getEnergyConsumption())))
            .andExpect(jsonPath("$[0].vehicle.acCharger.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$[0].vehicle.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$[0].vehicle.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$[0].vehicle.dcCharger.id", is(testDcCharger.getId())))
            .andExpect(jsonPath("$[0].vehicle.dcCharger.maxPower", is(testDcCharger.getMaxPower())))
            .andExpect(jsonPath("$[0].vehicle.dcCharger.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve()))).andExpect(jsonPath("$[0].user.id", is(testUser.getId())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.username", is(testStationOwner.getUsername())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.password", is(testStationOwner.getPassword())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.emailAddr", is(testStationOwner.getEmailAddr())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.firstName", is(testStationOwner.getFirstName())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.lastName", is(testStationOwner.getLastName())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.apiKey", is(testStationOwner.getApiKey())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.address.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.address.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.address.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.address.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.address.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.address.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.address.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.address.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.address.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$[0].chargingStation.stationOwner.address.country.continentCode", is(testCountry.getContinentCode())))
            .andExpect(jsonPath("$[0].chargingStation.operator.id", is(testOperator.getId())))
            .andExpect(jsonPath("$[0].chargingStation.operator.title", is(testOperator.getTitle())))
            .andExpect(jsonPath("$[0].chargingStation.operator.websiteUrl", is(testOperator.getWebsiteUrl())))
            .andExpect(jsonPath("$[0].chargingStation.operator.comments", is(testOperator.getComments())))
            .andExpect(jsonPath("$[0].chargingStation.operator.primaryPhone", is(testOperator.getPrimaryPhone())))
            .andExpect(jsonPath("$[0].chargingStation.operator.secondaryPhone", is(testOperator.getSecondaryPhone())))
            .andExpect(jsonPath("$[0].chargingStation.operator.isPrivateIndividual", is(testOperator.getIsPrivateIndividual())))
            .andExpect(jsonPath("$[0].chargingStation.operator.bookingUrl", is(testOperator.getBookingUrl())))
            .andExpect(jsonPath("$[0].chargingStation.operator.contactEmail", is(testOperator.getContactEmail())))
            .andExpect(jsonPath("$[0].chargingStation.operator.faultReportEmail", is(testOperator.getFaultReportEmail())))
            .andExpect(jsonPath("$[0].chargingStation.operator.isRestrictedEdit", is(testOperator.getIsRestrictedEdit())));

        this.mockmvc.perform(get("/evcharge/api/chargingprocesses")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
	}

    @Test
    void testGetOneChargingProcess () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Date date = java.sql.Date.valueOf(LocalDate.parse("20201010", DateTimeFormatter.BASIC_ISO_DATE));
        //for vehicle
        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        DcCharger testDcCharger = new DcCharger(3,3.3,true);

        Vehicle testVehicle = new Vehicle(1,"toyota", "test_brandid", "ix", "corolla" , 1992, 1.5, 0.5, testAcCharger, testDcCharger);  

        //for user
        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        User testUser = new User("user1", "pass1", "email1" , "name1", "name2" , date, testUserAddress,"apikey" );

        //for Station
        StationOwner testStationOwner = new StationOwner(1,"user1", "pass1", "email1" , "name1", "name2" , testUserAddress,date,"apikey" );
        Operator testOperator = new Operator(1,"mytitle","myUrl","mycomms","myphone1","myphone2",false,"mybookUrl","myEmail","myFault",true);
        UsageType testUsageType = new UsageType(1,"mytitle",true);
        Address testAddress = new Address(1,"mytitle","test_address_line1","test_address_line2", "testTown", "TestState", "TestPostcode",1.2,1.2,
                                    "testPhone1", "testPhone2", "testemail","testcomms","testUrl","testGeneral",testCountry);
        StatusType testStatusType = new StatusType(1,"mytitle",true,true);
        SubmissionStatus testSubmission = new SubmissionStatus(1,"mytitle",true);
        
        ChargingStation testStation = new ChargingStation(1,"myuuid",testOperator,testUsageType,testAddress,"mycomms",date,date,date,testStatusType,testSubmission,3.1,0.23,testStationOwner);

        //for Spot
        ConnectionType testConnection = new ConnectionType(1,"mytitle","myformal","mycategory");
        Level testLevel = new Level(1,"mytitle","mycomms",true);
        CurrentType testCurrent = new CurrentType(1,"mytitle","mydescr");

        ChargingSpot testSpot = new ChargingSpot(1,testConnection,testLevel,1.2,1.2,1.2,testCurrent,"mycomms");

		ChargingProcess testChargingProcess = new ChargingProcess(1,testUser,testVehicle,testStation,testSpot,date,date,date,"local",1.2,1.2,"credit",3.1,"medium");

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testChargingProcess));

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/chargingprocesses/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.user.id", is(testUser.getId())))
            .andExpect(jsonPath("$.user.username", is(testUser.getUsername())))
            .andExpect(jsonPath("$.user.password", is(testUser.getPassword())))
            .andExpect(jsonPath("$.user.emailAddr", is(testUser.getEmailAddr())))
            .andExpect(jsonPath("$.user.firstName", is(testUser.getFirstName())))
            .andExpect(jsonPath("$.user.lastName", is(testUser.getLastName())))
            .andExpect(jsonPath("$.user.apiKey", is(testUser.getapiKey())))
            .andExpect(jsonPath("$.user.userAddress.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$.user.userAddress.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$.user.userAddress.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$.user.userAddress.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$.user.userAddress.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$.user.userAddress.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$.user.userAddress.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$.user.userAddress.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.user.userAddress.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$.user.userAddress.country.continentCode", is(testCountry.getContinentCode())))
            .andExpect(jsonPath("$.vehicle.id", is(testVehicle.getId())))
            .andExpect(jsonPath("$.vehicle.brand", is(testVehicle.getBrand())))
            .andExpect(jsonPath("$.vehicle.brandId", is(testVehicle.getBrandId())))
            .andExpect(jsonPath("$.vehicle.type", is(testVehicle.getType())))
            .andExpect(jsonPath("$.vehicle.model", is(testVehicle.getModel())))
            .andExpect(jsonPath("$.vehicle.releaseYear", is(testVehicle.getReleaseYear())))
            .andExpect(jsonPath("$.vehicle.usableBatterySize", is(testVehicle.getUsableBatterySize())))
            .andExpect(jsonPath("$.vehicle.energyConsumption", is(testVehicle.getEnergyConsumption())))
            .andExpect(jsonPath("$.vehicle.acCharger.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$.vehicle.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$.vehicle.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$.vehicle.dcCharger.id", is(testDcCharger.getId())))
            .andExpect(jsonPath("$.vehicle.dcCharger.maxPower", is(testDcCharger.getMaxPower())))
            .andExpect(jsonPath("$.vehicle.dcCharger.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.username", is(testStationOwner.getUsername())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.password", is(testStationOwner.getPassword())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.emailAddr", is(testStationOwner.getEmailAddr())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.firstName", is(testStationOwner.getFirstName())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.lastName", is(testStationOwner.getLastName())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.apiKey", is(testStationOwner.getApiKey())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.address.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.address.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.address.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.address.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.address.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.address.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.address.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.address.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.address.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$.chargingStation.stationOwner.address.country.continentCode", is(testCountry.getContinentCode())))
            .andExpect(jsonPath("$.chargingStation.operator.id", is(testOperator.getId())))
            .andExpect(jsonPath("$.chargingStation.operator.title", is(testOperator.getTitle())))
            .andExpect(jsonPath("$.chargingStation.operator.websiteUrl", is(testOperator.getWebsiteUrl())))
            .andExpect(jsonPath("$.chargingStation.operator.comments", is(testOperator.getComments())))
            .andExpect(jsonPath("$.chargingStation.operator.primaryPhone", is(testOperator.getPrimaryPhone())))
            .andExpect(jsonPath("$.chargingStation.operator.secondaryPhone", is(testOperator.getSecondaryPhone())))
            .andExpect(jsonPath("$.chargingStation.operator.isPrivateIndividual", is(testOperator.getIsPrivateIndividual())))
            .andExpect(jsonPath("$.chargingStation.operator.bookingUrl", is(testOperator.getBookingUrl())))
            .andExpect(jsonPath("$.chargingStation.operator.contactEmail", is(testOperator.getContactEmail())))
            .andExpect(jsonPath("$.chargingStation.operator.faultReportEmail", is(testOperator.getFaultReportEmail())))
            .andExpect(jsonPath("$.chargingStation.operator.isRestrictedEdit", is(testOperator.getIsRestrictedEdit())));


        this.mockmvc.perform(get("/evcharge/api/chargingprocesses/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/chargingprocesses/{id}",2)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isPaymentRequired());
    }

    //@Test
    void testPostChargingProcess() throws Exception {
    
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Date date = java.sql.Date.valueOf(LocalDate.parse("20201010", DateTimeFormatter.BASIC_ISO_DATE));
        //for vehicle
        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        DcCharger testDcCharger = new DcCharger(3,3.3,true);

        Vehicle testVehicle = new Vehicle(1,"toyota", "test_brandid", "ix", "corolla" , 1992, 1.5, 0.5, testAcCharger, testDcCharger);  

        //for user
        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        User testUser = new User("user1", "pass1", "email1" , "name1", "name2" , date, testUserAddress,"apikey" );

        //for Station
        CurrentProvider testCurrentProvider = new CurrentProvider(1, "provName");
        testCurrentProvider.setCountry(testCountry);
        StationOwner testStationOwner = new StationOwner(1,"user1", "pass1", "email1" , "name1", "name2" , testUserAddress,date,"apikey" );
        Operator testOperator = new Operator(1,"mytitle","myUrl","mycomms","myphone1","myphone2",false,"mybookUrl","myEmail","myFault",true);
        UsageType testUsageType = new UsageType(1,"mytitle",true);
        Address testAddress = new Address(1,"mytitle","test_address_line1","test_address_line2", "testTown", "TestState", "TestPostcode",1.2,1.2,
                                    "testPhone1", "testPhone2", "testemail","testcomms","testUrl","testGeneral",testCountry);
        StatusType testStatusType = new StatusType(1,"mytitle",true,true);
        SubmissionStatus testSubmission = new SubmissionStatus(1,"mytitle",true);
        
        ChargingStation testStation = new ChargingStation(1,"myuuid",testOperator,testUsageType,testAddress,"mycomms",date,date,date,testStatusType,testSubmission,3.1,0.23,testStationOwner);

        //for Spot
        ConnectionType testConnection = new ConnectionType(1,"mytitle","myformal","mycategory");
        Level testLevel = new Level(1,"mytitle","mycomms",true);
        CurrentType testCurrent = new CurrentType(1,"mytitle","mydescr");

        ChargingSpot testSpot = new ChargingSpot(1,testConnection,testLevel,1.2,1.2,1.2,testCurrent,"mycomms");

		ChargingProcess testChargingProcess = new ChargingProcess(1,testUser,testVehicle,testStation,testSpot,date,date,date,"local",1.2,1.2,"credit",3.1,"medium");


        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        ObjectNode acJson = mapper.createObjectNode();
        acJson.put("id", testAcCharger.getId());
        acJson.put("usablePhases", testAcCharger.getUsablePhases());
        acJson.put("maxPower", testAcCharger.getMaxPower());
        
        ObjectNode dcJson = mapper.createObjectNode();
        dcJson.put("id", testDcCharger.getId());
        dcJson.put("maxPower", testDcCharger.getMaxPower());
        dcJson.put("isDefaultChargingCurve", testDcCharger.getIsDefaultChargingCurve());

        ObjectNode VehicleJson = mapper.createObjectNode();
        VehicleJson.put("id", testVehicle.getId());
        VehicleJson.put("brand", testVehicle.getBrand());
        VehicleJson.put("brandId", testVehicle.getBrandId());
        VehicleJson.put("type", testVehicle.getType());
        VehicleJson.put("model", testVehicle.getModel());
        VehicleJson.put("releaseYear", testVehicle.getReleaseYear());
        VehicleJson.put("usableBatterySize", testVehicle.getUsableBatterySize());
        VehicleJson.put("energyConsumption", testVehicle.getEnergyConsumption());
        VehicleJson.put("acCharger", acJson);
        VehicleJson.put("dcCharger", dcJson);

        ObjectNode CountryJson = mapper.createObjectNode();
        CountryJson.put("id",testCountry.getId());
        CountryJson.put("continentCode", testCountry.getContinentCode());
        CountryJson.put("isocode", testCountry.getISOCode());
        CountryJson.put("title", testCountry.getTitle());

        ObjectNode AddressJson = mapper.createObjectNode();
        AddressJson.put("id", testUserAddress.getId());
        AddressJson.put("country", CountryJson);
        AddressJson.put("contactTelephone2", testUserAddress.getContactTelephone2());
        AddressJson.put("contactTelephone1", testUserAddress.getContactTelephone1());
        AddressJson.put("stateOrProvince", testUserAddress.getStateOrProvince());
        AddressJson.put("userAddressLine1", testUserAddress.getUserAddressLine1());
        AddressJson.put("town", testUserAddress.getTown());
        AddressJson.put("postcode", testUserAddress.getPostcode());
        
    
        ObjectNode UserJson = mapper.createObjectNode();
        UserJson.put("id", testUser.getId());
        UserJson.put("username", testUser.getUsername());
        UserJson.put("password", testUser.getPassword());
        UserJson.put("emailAddr", testUser.getEmailAddr());
        UserJson.put("firstName", testUser.getFirstName());
        UserJson.put("lastName", testUser.getLastName());
        UserJson.put("dateOfBirth", "20201010");
        UserJson.put("apiKey", testUser.getapiKey());
        UserJson.put("userAddress", AddressJson);

        ObjectNode currentJson = mapper.createObjectNode();
        currentJson.put("id",testCurrentProvider.getId());
        currentJson.put("name",testCurrentProvider.getName());
        currentJson.put("country",CountryJson);

        ObjectNode OwnerJson = mapper.createObjectNode();
        OwnerJson.put("id", testStationOwner.getId());
        OwnerJson.put("username", testStationOwner.getUsername());
        OwnerJson.put("password", testStationOwner.getPassword());
        OwnerJson.put("emailAddr", testStationOwner.getEmailAddr());
        OwnerJson.put("firstName", testStationOwner.getFirstName());
        OwnerJson.put("lastName", testStationOwner.getLastName());
        OwnerJson.put("apiKey", testStationOwner.getApiKey());
        OwnerJson.put("address", AddressJson);
        OwnerJson.put("dateOfBirth", "20201010");

        ObjectNode operatorJson = mapper.createObjectNode();
        operatorJson.put("id",1);
        operatorJson.put("title","mytitle");
        operatorJson.put("websiteUrl","myUrl");
        operatorJson.put("comments","mycomms");
        operatorJson.put("primaryPhone","myphone1");
        operatorJson.put("secondaryPhone","myphone2");
        operatorJson.put("isPrivateIndividual",false);
        operatorJson.put("bookingUrl","mybookUrl");
        operatorJson.put("contactEmail","myEmail");
        operatorJson.put("isRestrictedEdit",true);
        operatorJson.put("faultReportEmail","myFault");

        ObjectNode usageJson = mapper.createObjectNode();
        usageJson.put("id",1);
        usageJson.put("title","mytitle");
        usageJson.put("isMembershipRequired",true);

        ObjectNode stationAddressJson = mapper.createObjectNode();
        stationAddressJson.put("id", testAddress.getId());
        stationAddressJson.put("country", CountryJson);
        stationAddressJson.put("contactTelephone2", testAddress.getContactTelephone2());
        stationAddressJson.put("contactTelephone1", testAddress.getContactTelephone1());
        stationAddressJson.put("generalComments",testAddress.getGeneralComments());
        stationAddressJson.put("stateOrProvince", testAddress.getStateOrProvince());
        stationAddressJson.put("accessComments",testAddress.getAccessComments());
        stationAddressJson.put("title",testAddress.getTitle());
        stationAddressJson.put("addressLine1", testAddress.getAddressLine1());
        stationAddressJson.put("addressLine2", testAddress.getAddressLine2());
        stationAddressJson.put("longtitude",String.valueOf(testAddress.getLongtitude()));
        stationAddressJson.put("town", testAddress.getTown());
        stationAddressJson.put("relatedurl",testAddress.getRelatedurl());
        stationAddressJson.put("postcode", testAddress.getPostcode());
        stationAddressJson.put("contactEmail", testAddress.getContactEmail());
        stationAddressJson.put("latitude",String.valueOf(testAddress.getLatitude()));

        ObjectNode statusJson = mapper.createObjectNode();
        statusJson.put("id",testStatusType.getId());
        statusJson.put("title",testStatusType.getTitle());
        statusJson.put("isOperational",testStatusType.getIsOperational());
        statusJson.put("isUserSelectable",testStatusType.getIsUserSelectable());

        ObjectNode SubmissionJson = mapper.createObjectNode();
        SubmissionJson.put("id",testSubmission.getId());
        SubmissionJson.put("title",testSubmission.getTitle());
        SubmissionJson.put("isLive",testSubmission.getIsLive());

        ObjectNode stationJson = mapper.createObjectNode();
        stationJson.put("id",testStation.getId());
        stationJson.put("uuid",testStation.getUuid());
        stationJson.put("currentProvider",currentJson);
        stationJson.put("stationOwner",OwnerJson);
        stationJson.put("operator",operatorJson);
        stationJson.put("usageType",usageJson);
        stationJson.put("address",stationAddressJson);
        stationJson.put("comments",testStation.getComments());
        stationJson.put("dateLastConfirmed","20201010");
        stationJson.put("dateLastStatusUpdate","20201010");
        stationJson.put("dateCreated","20201010");
        stationJson.put("statusType",statusJson);
        stationJson.put("submissionStatus",SubmissionJson);
        stationJson.put("rating",String.valueOf(testStation.getRating()));
        stationJson.put("costPerKwh",String.valueOf(testStation.getCostPerKwh()));

        ObjectNode ConnectionTypeJson = mapper.createObjectNode();
        ConnectionTypeJson.put("id",testConnection.getId());
        ConnectionTypeJson.put("title",testConnection.getTitle());
        ConnectionTypeJson.put("formalName",testConnection.getFormalName());
        ConnectionTypeJson.put("category",testConnection.getCategory());

        ObjectNode LevelJson = mapper.createObjectNode();
        LevelJson.put("id",testLevel.getId());
        LevelJson.put("title",testLevel.getTitle());
        LevelJson.put("comments",testLevel.getComments());
        LevelJson.put("isFastChargeCapable",testLevel.getIsFastChargeCapable());

        ObjectNode CurrentTypeJson = mapper.createObjectNode();
        CurrentTypeJson.put("id",testCurrent.getId());
        CurrentTypeJson.put("title",testCurrent.getTitle());
        CurrentTypeJson.put("description",testCurrent.getDescription());

        ObjectNode SpotJson = mapper.createObjectNode();
        SpotJson.put("id",testSpot.getId());
        SpotJson.put("connectionType",ConnectionTypeJson);
        SpotJson.put("level",LevelJson);
        SpotJson.put("amps",String.valueOf(testSpot.getAmps()));
        SpotJson.put("voltage",String.valueOf(testSpot.getVoltage()));
        SpotJson.put("powerkw",String.valueOf(testSpot.getPowerkw()));
        SpotJson.put("currentType",CurrentTypeJson);
        SpotJson.put("comments",testSpot.getComments());

        ObjectNode ProcessJson = mapper.createObjectNode();
        ProcessJson.put("id",testChargingProcess.getId());
        ProcessJson.put("user",UserJson);
        ProcessJson.put("vehicle",VehicleJson);
        ProcessJson.put("chargingStation",stationJson);
        ProcessJson.put("chargingSpot",SpotJson);
        ProcessJson.put("connectionTime","20201010");
        ProcessJson.put("disconnectTime","20201010");
        ProcessJson.put("doneChargingTime","20201010");
        ProcessJson.put("timezone",testChargingProcess.getTimezone());
        ProcessJson.put("kwhDelivered",String.valueOf(testChargingProcess.getKwhDelivered()));
        ProcessJson.put("cost",String.valueOf(testChargingProcess.getCost()));
        ProcessJson.put("paymentWay",testChargingProcess.getPaymentWay());
        ProcessJson.put("rating",testChargingProcess.getRating());
        ProcessJson.put("chargingProgram",testChargingProcess.getChargingProgram());


        String json = ProcessJson.toString();

        BDDMockito.when(repository.save(testChargingProcess)).thenReturn(testChargingProcess);

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(post("/evcharge/api/chargingprocessesmod")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk());


        this.mockmvc.perform(post("/evcharge/api/chargingprocessesmod")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }

    @Test 
    void testDeleteChargingProcess() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(delete("/evcharge/api/chargingprocessesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/chargingprocessesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }
}
