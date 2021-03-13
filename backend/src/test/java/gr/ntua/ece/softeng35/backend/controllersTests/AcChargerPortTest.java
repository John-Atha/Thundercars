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


@WebMvcTest(AcChargerPortController.class)
class AcChargerPortTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private AcChargerPortRepository repository;

    @MockBean
    private UserRepository repository2;

    @MockBean
    private AcChargerRepository repository3;

    @Test
    void testGetAcChargerPorts() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        AcCharger testAcCharger = new AcCharger(1,3,3.45);

        AcChargerPort testAcChargerPort = new AcChargerPort(1,"type1",testAcCharger);

        List<AcChargerPort> myList = Arrays.asList(testAcChargerPort);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/acchargerports","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].portname", is(testAcChargerPort.getPortname())))
            .andExpect(jsonPath("$[0].acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$[0].acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$[0].acCharger.usablePhases", is(testAcCharger.getUsablePhases())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/acchargerports","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneAcChargerPort () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        AcCharger testAcCharger = new AcCharger(1,3,3.45);
        AcChargerPort testAcChargerPort = new AcChargerPort(1,"type1",testAcCharger);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testAcChargerPort));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/acchargerports/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.portname", is(testAcChargerPort.getPortname())))
            .andExpect(jsonPath("$.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$.acCharger.usablePhases", is(testAcCharger.getUsablePhases())));


        this.mockmvc.perform(get("/evcharge/api/{apikey}/acchargerports/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/{apikey}/acchargerports/{id}","123456789",2)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostAcChargerPort() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();
        ObjectNode newAcJson = mapper.createObjectNode();

		AcCharger testAcCharger = new AcCharger(1,3,3.45);

        AcChargerPort testAcChargerPort = new AcChargerPort(1,"type1",testAcCharger);

        newJson.put("id",1);
        newJson.put("portname","type1");
        newAcJson.put("id",1);
        newAcJson.put("usablePhases",3);
        newAcJson.put("maxPower",3.45);
        newJson.put("acCharger",newAcJson);

        String json = newJson.toString();

        BDDMockito.when(repository3.findById(1)).thenReturn(Optional.of(testAcCharger));
        BDDMockito.when(repository3.save(testAcCharger)).thenReturn(testAcCharger);
        BDDMockito.when(repository.save(testAcChargerPort)).thenReturn(testAcChargerPort);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/acchargerportsmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.portname", is(testAcChargerPort.getPortname())))
            .andExpect(jsonPath("$.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$.acCharger.usablePhases", is(testAcCharger.getUsablePhases())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/acchargerportsmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    @Test
	void testPutAcChargerPort() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();
        ObjectNode newAcJson = mapper.createObjectNode();

        AcCharger firstAcCharger = new AcCharger(1,1,6.45);
        AcCharger testAcCharger = new AcCharger(1,3,3.45);
        AcChargerPort firstAcChargerPort = new AcChargerPort(1,"type2",firstAcCharger);
        AcChargerPort testAcChargerPort = new AcChargerPort(1,"type1",testAcCharger);

        newJson.put("id",1);
        newJson.put("portname","type1");
        newAcJson.put("id",1);
        newAcJson.put("usablePhases",3);
        newAcJson.put("maxPower",3.45);
        newJson.put("acCharger",newAcJson);

        String json = newJson.toString();

        BDDMockito.when(repository3.findById(firstAcCharger.getId())).thenReturn(Optional.of(firstAcCharger));
        BDDMockito.when(repository3.findById(testAcCharger.getId())).thenReturn(Optional.of(testAcCharger));

        BDDMockito.when(repository.findById(firstAcChargerPort.getId())).thenReturn(Optional.of(firstAcChargerPort));
        BDDMockito.when(repository.save(testAcChargerPort)).thenReturn(testAcChargerPort);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/acchargerportsmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.portname", is(testAcChargerPort.getPortname())))
            .andExpect(jsonPath("$.acCharger.id", is(testAcCharger.getId())))
            .andExpect(jsonPath("$.acCharger.maxPower", is(testAcCharger.getMaxPower())))
            .andExpect(jsonPath("$.acCharger.usablePhases", is(testAcCharger.getUsablePhases())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/acchargerportsmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

            this.mockmvc.perform(put("/evcharge/api/{apikey}/acchargerportsmod/{id}","123456789",151)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeleteAcChargerPort() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/acchargerportsmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/acchargerportsmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
}