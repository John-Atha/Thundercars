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


@WebMvcTest(PowerPerChargingPointController.class)
class PowerPerChargingPointTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private PowerPerChargingPointRepository repository;

    @MockBean
    private UserRepository repository2;

    @MockBean
    private AcChargerRepository repository3;
    
    @Test
    void testGetPowerPerChargingPoints() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        PowerPerChargingPoint testPowerPerChargingPoint = new PowerPerChargingPoint(1,testAcCharger,2.0,2.3,3.7,7.4,11.0,16.0,22.0,43.0);

        List<PowerPerChargingPoint> myList = Arrays.asList(testPowerPerChargingPoint);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/powerperchargingpoint","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$[0].acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$[0].acCharger.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$[0].point20", is(testPowerPerChargingPoint.getPoint20())))
            .andExpect(jsonPath("$[0].point23", is(testPowerPerChargingPoint.getPoint23())))
            .andExpect(jsonPath("$[0].point37", is(testPowerPerChargingPoint.getPoint37())))
            .andExpect(jsonPath("$[0].point74", is(testPowerPerChargingPoint.getPoint74())))
            .andExpect(jsonPath("$[0].point110", is(testPowerPerChargingPoint.getPoint110())))
            .andExpect(jsonPath("$[0].point160", is(testPowerPerChargingPoint.getPoint160())))
            .andExpect(jsonPath("$[0].point220", is(testPowerPerChargingPoint.getPoint220())))
            .andExpect(jsonPath("$[0].point430", is(testPowerPerChargingPoint.getPoint430())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/powerperchargingpoint","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOnePowerPerChargingPoint () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        AcCharger testAcCharger = new AcCharger(150,3,3.45);
        PowerPerChargingPoint testPowerPerChargingPoint = new PowerPerChargingPoint(1,testAcCharger,2.0,2.3,3.7,7.4,11.0,16.0,22.0,43.0);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testPowerPerChargingPoint));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/powerperchargingpoint/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$.acCharger.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$.point20", is(testPowerPerChargingPoint.getPoint20())))
            .andExpect(jsonPath("$.point23", is(testPowerPerChargingPoint.getPoint23())))
            .andExpect(jsonPath("$.point37", is(testPowerPerChargingPoint.getPoint37())))
            .andExpect(jsonPath("$.point74", is(testPowerPerChargingPoint.getPoint74())))
            .andExpect(jsonPath("$.point110", is(testPowerPerChargingPoint.getPoint110())))
            .andExpect(jsonPath("$.point160", is(testPowerPerChargingPoint.getPoint160())))
            .andExpect(jsonPath("$.point220", is(testPowerPerChargingPoint.getPoint220())))
            .andExpect(jsonPath("$.point430", is(testPowerPerChargingPoint.getPoint430())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/powerperchargingpoint/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/{apikey}/powerperchargingpoint/{id}","123456789",2)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostPowerPerChargingPoint() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();
        ObjectNode newAcJson = mapper.createObjectNode();

        AcCharger testAcCharger = new AcCharger(150,3,3.45);
		PowerPerChargingPoint testPowerPerChargingPoint = new PowerPerChargingPoint(1,testAcCharger,2.0,2.3,3.7,7.4,11.0,16.0,22.0,43.0);

        newJson.put("id",1);
        newAcJson.put("id",150);
        newAcJson.put("usablePhases",3);
        newAcJson.put("maxPower",3.45);
        newJson.put("acCharger",newAcJson);
        newJson.put("point20",2.0);
        newJson.put("point23",2.3);
        newJson.put("point37",3.7);
        newJson.put("point74",7.4);
        newJson.put("point110",11.0);
        newJson.put("point160",16.0);
        newJson.put("point220",22.0);
        newJson.put("point430",43.0);

        String json = newJson.toString();

        BDDMockito.when(repository.save(testPowerPerChargingPoint)).thenReturn(testPowerPerChargingPoint);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/powerperchargingpointmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$.acCharger.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$.point20", is(testPowerPerChargingPoint.getPoint20())))
            .andExpect(jsonPath("$.point23", is(testPowerPerChargingPoint.getPoint23())))
            .andExpect(jsonPath("$.point37", is(testPowerPerChargingPoint.getPoint37())))
            .andExpect(jsonPath("$.point74", is(testPowerPerChargingPoint.getPoint74())))
            .andExpect(jsonPath("$.point110", is(testPowerPerChargingPoint.getPoint110())))
            .andExpect(jsonPath("$.point160", is(testPowerPerChargingPoint.getPoint160())))
            .andExpect(jsonPath("$.point220", is(testPowerPerChargingPoint.getPoint220())))
            .andExpect(jsonPath("$.point430", is(testPowerPerChargingPoint.getPoint430())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/powerperchargingpointmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    @Test
	void testPutPowerPerChargingPoint() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();
        ObjectNode newAcJson = mapper.createObjectNode();

        AcCharger firstAcCharger = new AcCharger(150,1,6.45);
		PowerPerChargingPoint firstPowerPerChargingPoint = new PowerPerChargingPoint(1,firstAcCharger,2.1,2.4,3.8,7.5,11.1,16.1,22.1,43.1);

        AcCharger testAcCharger = new AcCharger(1,3,3.45);
		PowerPerChargingPoint testPowerPerChargingPoint = new PowerPerChargingPoint(1,testAcCharger,2.0,2.3,3.7,7.4,11.0,16.0,22.0,43.0);

        newJson.put("id",1);
        newAcJson.put("id",1);
        newAcJson.put("usablePhases",3);
        newAcJson.put("maxPower",3.45);
        newJson.put("acCharger",newAcJson);
        newJson.put("point20",2.0);
        newJson.put("point23",2.3);
        newJson.put("point37",3.7);
        newJson.put("point74",7.4);
        newJson.put("point110",11.0);
        newJson.put("point160",16.0);
        newJson.put("point220",22.0);
        newJson.put("point430",43.0);

        String json = newJson.toString();


        BDDMockito.when(repository3.findById(firstAcCharger.getId())).thenReturn(Optional.of(firstAcCharger));
        BDDMockito.when(repository3.findById(testAcCharger.getId())).thenReturn(Optional.of(testAcCharger));

        BDDMockito.when(repository.findById(firstPowerPerChargingPoint.getId())).thenReturn(Optional.of(firstPowerPerChargingPoint));
        BDDMockito.when(repository.save(testPowerPerChargingPoint)).thenReturn(testPowerPerChargingPoint);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/powerperchargingpointmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$.acCharger.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$.point20", is(testPowerPerChargingPoint.getPoint20())))
            .andExpect(jsonPath("$.point23", is(testPowerPerChargingPoint.getPoint23())))
            .andExpect(jsonPath("$.point37", is(testPowerPerChargingPoint.getPoint37())))
            .andExpect(jsonPath("$.point74", is(testPowerPerChargingPoint.getPoint74())))
            .andExpect(jsonPath("$.point110", is(testPowerPerChargingPoint.getPoint110())))
            .andExpect(jsonPath("$.point160", is(testPowerPerChargingPoint.getPoint160())))
            .andExpect(jsonPath("$.point220", is(testPowerPerChargingPoint.getPoint220())))
            .andExpect(jsonPath("$.point430", is(testPowerPerChargingPoint.getPoint430())));


        this.mockmvc.perform(put("/evcharge/api/{apikey}/powerperchargingpointmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/{apikey}/powerperchargingpointmod/{id}","123456789",151)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeletePowerPerChargingPoint() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/powerperchargingpointmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/powerperchargingpointmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
}
