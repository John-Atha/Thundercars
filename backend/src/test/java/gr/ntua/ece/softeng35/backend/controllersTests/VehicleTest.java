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


@WebMvcTest(VehicleController.class)
class VehicleTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private VehicleRepository repository;

    @MockBean
    private UserRepository repository2;

    @MockBean
    private StationOwnerRepository repository4;

    @MockBean
    private AdminRepository repository5;

    @MockBean
    private AcChargerRepository repository7;

    @MockBean
    private DcChargerRepository repository8;


    @Test
    void testGetVehicles() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        DcCharger testDcCharger = new DcCharger(3,3.3,true);

        Vehicle testVehicle = new Vehicle(1,"toyota", "test_brandid", "ix", "corolla" , 1992, 1.5, 0.5, testAcCharger, testDcCharger);

        List<Vehicle> myList = Arrays.asList(testVehicle);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/vehicles")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].id", is(testVehicle.getId())))
            .andExpect(jsonPath("$[0].brand", is(testVehicle.getBrand())))
            .andExpect(jsonPath("$[0].brandId", is(testVehicle.getBrandId())))
            .andExpect(jsonPath("$[0].type", is(testVehicle.getType())))
            .andExpect(jsonPath("$[0].model", is(testVehicle.getModel())))
            .andExpect(jsonPath("$[0].releaseYear", is(testVehicle.getReleaseYear())))
            .andExpect(jsonPath("$[0].usableBatterySize", is(testVehicle.getUsableBatterySize())))
            .andExpect(jsonPath("$[0].energyConsumption", is(testVehicle.getEnergyConsumption())))
            .andExpect(jsonPath("$[0].acCharger.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$[0].acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$[0].acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$[0].dcCharger.id", is(testDcCharger.getId())))
            .andExpect(jsonPath("$[0].dcCharger.maxPower", is(testDcCharger.getMaxPower())))
            .andExpect(jsonPath("$[0].dcCharger.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(get("/evcharge/api/vehicles")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneVehicle () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        DcCharger testDcCharger = new DcCharger(3,3.3,true);

        Vehicle testVehicle = new Vehicle(1,"toyota", "test_brandid", "ix", "corolla" , 1992, 1.5, 0.5, testAcCharger, testDcCharger);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testVehicle));


        List<User> users = new ArrayList<User>();
        List<Admin> admins = new ArrayList<Admin>();
        List<StationOwner> stationOwners = new ArrayList<StationOwner>();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/vehicles/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            
            .andExpect(jsonPath("$.id", is(testVehicle.getId())))
            .andExpect(jsonPath("$.brand", is(testVehicle.getBrand())))
            .andExpect(jsonPath("$.brandId", is(testVehicle.getBrandId())))
            .andExpect(jsonPath("$.type", is(testVehicle.getType())))
            .andExpect(jsonPath("$.model", is(testVehicle.getModel())))
            .andExpect(jsonPath("$.releaseYear", is(testVehicle.getReleaseYear())))
            .andExpect(jsonPath("$.usableBatterySize", is(testVehicle.getUsableBatterySize())))
            .andExpect(jsonPath("$.energyConsumption", is(testVehicle.getEnergyConsumption())))
            .andExpect(jsonPath("$.acCharger.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$.dcCharger.id", is(testDcCharger.getId())))
            .andExpect(jsonPath("$.dcCharger.maxPower", is(testDcCharger.getMaxPower())))
            .andExpect(jsonPath("$.dcCharger.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())));

        
        this.mockmvc.perform(get("/evcharge/api/vehicles/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/vehicles/{id}",2)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostVehicle() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();


        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        DcCharger testDcCharger = new DcCharger(3,3.3,true);

        Vehicle testVehicle = new Vehicle(1,"toyota", "test_brandid", "ix", "corolla" , 1992, 1.5, 0.5, testAcCharger, testDcCharger);

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
        
        String json = VehicleJson.toString();

        BDDMockito.when(repository8.findById(3)).thenReturn(Optional.of(testDcCharger));
        BDDMockito.when(repository7.findById(150)).thenReturn(Optional.of(testAcCharger));
        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testVehicle));
        BDDMockito.when(repository.save(testVehicle)).thenReturn(testVehicle);


        List<User> users = new ArrayList<User>();
        List<Admin> admins = new ArrayList<Admin>();
        List<StationOwner> stationOwners = new ArrayList<StationOwner>();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(post("/evcharge/api/vehiclesmod")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(testVehicle.getId())))
            .andExpect(jsonPath("$.brand", is(testVehicle.getBrand())))
            .andExpect(jsonPath("$.brandId", is(testVehicle.getBrandId())))
            .andExpect(jsonPath("$.type", is(testVehicle.getType())))
            .andExpect(jsonPath("$.model", is(testVehicle.getModel())))
            .andExpect(jsonPath("$.releaseYear", is(testVehicle.getReleaseYear())))
            .andExpect(jsonPath("$.usableBatterySize", is(testVehicle.getUsableBatterySize())))
            .andExpect(jsonPath("$.energyConsumption", is(testVehicle.getEnergyConsumption())))
            .andExpect(jsonPath("$.acCharger.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$.dcCharger.id", is(testDcCharger.getId())))
            .andExpect(jsonPath("$.dcCharger.maxPower", is(testDcCharger.getMaxPower())))
            .andExpect(jsonPath("$.dcCharger.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(post("/evcharge/api/vehiclesmod")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
	}

    @Test
	void testPutVehicle() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();
        ObjectNode newAcJson = mapper.createObjectNode();

        AcCharger firstAcCharger = new AcCharger(150,6,6.45);
        DcCharger firstDcCharger = new DcCharger(3,6.3,true);

        Vehicle firstVehicle = new Vehicle(1,"toyot", "test_brandid1", "ix1", "corolla1" , 1993, 2.5, 1.5, firstAcCharger, firstDcCharger);

        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        DcCharger testDcCharger = new DcCharger(3,3.3,true);

        Vehicle testVehicle = new Vehicle(1,"toyota", "test_brandid", "ix", "corolla" , 1992, 1.5, 0.5, testAcCharger, testDcCharger);

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
        
        String json = VehicleJson.toString();

        BDDMockito.when(repository.findById(firstVehicle.getId())).thenReturn(Optional.of(firstVehicle));
        BDDMockito.when(repository.save(testVehicle)).thenReturn(testVehicle);


        List<User> users = new ArrayList<User>();
        List<Admin> admins = new ArrayList<Admin>();
        List<StationOwner> stationOwners = new ArrayList<StationOwner>();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(put("/evcharge/api/vehiclesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(testVehicle.getId())))
            .andExpect(jsonPath("$.brand", is(testVehicle.getBrand())))
            .andExpect(jsonPath("$.brandId", is(testVehicle.getBrandId())))
            .andExpect(jsonPath("$.type", is(testVehicle.getType())))
            .andExpect(jsonPath("$.model", is(testVehicle.getModel())))
            .andExpect(jsonPath("$.releaseYear", is(testVehicle.getReleaseYear())))
            .andExpect(jsonPath("$.usableBatterySize", is(testVehicle.getUsableBatterySize())))
            .andExpect(jsonPath("$.energyConsumption", is(testVehicle.getEnergyConsumption())))
            .andExpect(jsonPath("$.acCharger.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$.dcCharger.id", is(testDcCharger.getId())))
            .andExpect(jsonPath("$.dcCharger.maxPower", is(testDcCharger.getMaxPower())))
            .andExpect(jsonPath("$.dcCharger.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(put("/evcharge/api/vehiclesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/vehiclesmod/{id}",151)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeleteVehicle() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<User> users = new ArrayList<User>();
        List<Admin> admins = new ArrayList<Admin>();
        List<StationOwner> stationOwners = new ArrayList<StationOwner>();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(delete("/evcharge/api/vehiclesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/vehiclesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }
}