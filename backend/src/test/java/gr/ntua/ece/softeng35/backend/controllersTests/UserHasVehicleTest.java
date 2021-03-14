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

@WebMvcTest(UserHasVehicleController.class)
class UserHasVehicleTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private UserHasVehicleRepository repository;

    @MockBean
    private UserRepository repository2;

    @MockBean
    private StationOwnerRepository repository4;

    @MockBean
    private AdminRepository repository5;
    
    @MockBean
    private AcChargerRepository repository11;
    
    @MockBean
    private DcChargerRepository repository12;
    
    @MockBean
    private CountryRepository repository1;
    
    @MockBean
    private VehicleRepository repository13;

    @MockBean
    private UserAddressRepository repository14;
 
    @Test
    void testGetUserHasVehicle() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();
        Date date = java.sql.Date.valueOf(LocalDate.parse("20201010", DateTimeFormatter.BASIC_ISO_DATE));
        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        DcCharger testDcCharger = new DcCharger(3,3.3,true);

        Vehicle testVehicle = new Vehicle(1,"toyota", "test_brandid", "ix", "corolla" , 1992, 1.5, 0.5, testAcCharger, testDcCharger);  

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        User testUser = new User("user1", "pass1", "email1" , "name1", "name2" , date, testUserAddress,"apikey" );

        UserHasVehicle testUserHasVehicle = new UserHasVehicle(1,testUser, testVehicle);

        List<UserHasVehicle> myList = Arrays.asList(testUserHasVehicle);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/userhasvehicles")
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
            .andExpect(jsonPath("$[0].vehicle.dcCharger.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(get("/evcharge/api/userhasvehicles")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneUserHasVehicle() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();
        Date date = java.sql.Date.valueOf(LocalDate.parse("20201010", DateTimeFormatter.BASIC_ISO_DATE));
        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        DcCharger testDcCharger = new DcCharger(3,3.3,true);

        Vehicle testVehicle = new Vehicle(1,"toyota", "test_brandid", "ix", "corolla" , 1992, 1.5, 0.5, testAcCharger, testDcCharger);  

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        User testUser = new User("user1", "pass1", "email1" , "name1", "name2" , date, testUserAddress,"apikey" );

        UserHasVehicle testUserHasVehicle = new UserHasVehicle(1,testUser, testVehicle);


        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testUserHasVehicle));

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/userhasvehicles/{id}",1)
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
            .andExpect(jsonPath("$.vehicle.dcCharger.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(get("/evcharge/api/userhasvehicles/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/userhasvehicles/{id}",10000)
        .contentType(MediaType.APPLICATION_JSON)
        .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
        .andExpect(status().isPaymentRequired());
    }



    @Test
    void testPostUserHasVehicle() throws Exception {
    
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        Date date = java.sql.Date.valueOf(LocalDate.parse("1970-01-19T00:00:00+00:00", DateTimeFormatter.ISO_OFFSET_DATE_TIME));
        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        DcCharger testDcCharger = new DcCharger(3,3.3,true);

        Vehicle testVehicle = new Vehicle(1,"toyota", "test_brandid", "ix", "corolla" , 1992, 1.5, 0.5, testAcCharger, testDcCharger);  

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        User testUser = new User("user1", "pass1", "email1" , "name1", "name2" , date, testUserAddress,"apikey" );

        UserHasVehicle testUserHasVehicle = new UserHasVehicle(1,testUser, testVehicle);

        
/*
        BDDMockito.when(repository1.findById(testCountry.getId())).thenReturn(Optional.of(testCountry));
        BDDMockito.when(repository2.findById(testUser.getId())).thenReturn(Optional.of(testUser));
        BDDMockito.when(repository11.findById(testAcCharger.getId())).thenReturn(Optional.of(testAcCharger));
        BDDMockito.when(repository12.findById(testDcCharger.getId())).thenReturn(Optional.of(testDcCharger));
        BDDMockito.when(repository13.findById(testVehicle.getId())).thenReturn(Optional.of(testVehicle));
        BDDMockito.when(repository14.findById(testUserAddress.getId())).thenReturn(Optional.of(testUserAddress));
*/
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
        AddressJson.put("contactTelephone1", testUserAddress.getContactTelephone1());
        AddressJson.put("stateOrProvince", testUserAddress.getStateOrProvince());
        AddressJson.put("contactTelephone2", testUserAddress.getContactTelephone2());
        AddressJson.put("userAddressLine1", testUserAddress.getUserAddressLine1());
        AddressJson.put("postcode", testUserAddress.getPostcode());
        AddressJson.put("town", testUserAddress.getTown());
        

        ObjectNode UserJson = mapper.createObjectNode();
        UserJson.put("id", testUser.getId());
        UserJson.put("username", testUser.getUsername());
        UserJson.put("password", testUser.getPassword());
        UserJson.put("emailAddr", testUser.getEmailAddr());
        UserJson.put("firstName", testUser.getFirstName());
        UserJson.put("lastName", testUser.getLastName());
        UserJson.put("dateOfBirth", "1970-01-19T00:00:00.000+0000");
        UserJson.put("apiKey", testUser.getapiKey());
        UserJson.put("userAddress", AddressJson);

        newJson.put("id", 1);
        newJson.put("user", UserJson);
        newJson.put("vehicle", VehicleJson);

        String json = newJson.toString();
        System.out.println(json);
        BDDMockito.when(repository.save(testUserHasVehicle)).thenReturn(testUserHasVehicle);

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(post("/evcharge/api/userhasvehiclesmod")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andDo(print())
            .andExpect(status().isOk());

        this.mockmvc.perform(post("/evcharge/api/userhasvehiclesmod")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }


    @Test 
    void testDeleteUserHasVehicle() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(delete("/evcharge/api/userhasvehiclesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/userhasvehiclesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }
    
}