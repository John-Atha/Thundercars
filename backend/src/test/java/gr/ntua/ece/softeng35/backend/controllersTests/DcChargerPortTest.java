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

@WebMvcTest(DcChargerPortController.class)
class DcChargerPortTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private DcChargerPortRepository repository;

    @MockBean
    private UserRepository repository2;

    @Test
    void testGetDcChargerPort () throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        DcCharger myDcCharger = new DcCharger(1,34.2,true);
        DcChargerPort testPort = new DcChargerPort(1,"ccs",myDcCharger);

        List<DcChargerPort> myList = Arrays.asList(testPort);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/dcchargerports","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].id", is(testPort.getId())))
            .andExpect(jsonPath("$[0].portname", is(testPort.getPortname())))
            .andExpect(jsonPath("$[0].dcCharger.id", is(myDcCharger.getId())))
            .andExpect(jsonPath("$[0].dcCharger.maxPower", is(myDcCharger.getMaxPower())))
            .andExpect(jsonPath("$[0].dcCharger.isDefaultChargingCurve", is(myDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/dcchargerports","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneDcChargerPort () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        DcCharger myDcCharger = new DcCharger(1,34.2,true);
        DcChargerPort testPort = new DcChargerPort(1,"ccs",myDcCharger);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testPort));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/dcchargerports/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(testPort.getId())))
            .andExpect(jsonPath("$.portname", is(testPort.getPortname())))
            .andExpect(jsonPath("$.dcCharger.id", is(myDcCharger.getId())))
            .andExpect(jsonPath("$.dcCharger.maxPower", is(myDcCharger.getMaxPower())))
            .andExpect(jsonPath("$.dcCharger.isDefaultChargingCurve", is(myDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/dcchargerports/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/{apikey}/dcchargerports/{id}","123456789",2)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostDcChargerPort() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();
        ObjectNode DcChargerJson = mapper.createObjectNode();

        DcCharger myDcCharger = new DcCharger(150,3.45,true);
		DcChargerPort testPort = new DcChargerPort(150,"ccs",myDcCharger);

        newJson.put("id",150);
        newJson.put("portname","ccs");
        DcChargerJson.put("id",150);
        DcChargerJson.put("maxPower",3.45);
        DcChargerJson.put("isDefaultChargingCurve",true);
        newJson.put("dcCharger",DcChargerJson); 

        String json = newJson.toString();

        BDDMockito.when(repository.save(testPort)).thenReturn(testPort);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/dcchargerportsmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(testPort.getId())))
            .andExpect(jsonPath("$.portname", is(testPort.getPortname())))
            .andExpect(jsonPath("$.dcCharger.id", is(myDcCharger.getId())))
            .andExpect(jsonPath("$.dcCharger.maxPower", is(myDcCharger.getMaxPower())))
            .andExpect(jsonPath("$.dcCharger.isDefaultChargingCurve", is(myDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/dcchargerportsmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    @Test
	void testPutDcChargerPort() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();
        ObjectNode DcChargerJson = mapper.createObjectNode();

        DcCharger myDcCharger = new DcCharger(150,3.45,true);
		DcChargerPort testPort = new DcChargerPort(150,"ccs",myDcCharger);

        DcCharger myDcCharger2 = new DcCharger(150,5.45,true);
		DcChargerPort testPort2 = new DcChargerPort(150,"chademo",myDcCharger2);

        newJson.put("id",150);
        newJson.put("portname","chademo");
        DcChargerJson.put("id",150);
        DcChargerJson.put("maxPower",5.45);
        DcChargerJson.put("isDefaultChargingCurve",true);
        newJson.put("dcCharger",DcChargerJson); 

        String json = newJson.toString();

        BDDMockito.when(repository.findById(testPort.getId())).thenReturn(Optional.of(testPort));
        BDDMockito.when(repository.save(testPort2)).thenReturn(testPort2);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/dcchargerportsmod/{id}","123456789",150)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(testPort2.getId())))
            .andExpect(jsonPath("$.portname", is(testPort2.getPortname())))
            .andExpect(jsonPath("$.dcCharger.id", is(myDcCharger2.getId())))
            .andExpect(jsonPath("$.dcCharger.maxPower", is(myDcCharger2.getMaxPower())))
            .andExpect(jsonPath("$.dcCharger.isDefaultChargingCurve", is(myDcCharger2.getIsDefaultChargingCurve())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/dcchargerportsmod/{id}","123456888",150)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/{apikey}/dcchargerportsmod/{id}","123456789",151)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeleteDcChargerPort() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/dcchargerportsmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/dcchargerportsmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
}