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


@WebMvcTest(DcChargerController.class)
class DcChargerTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private DcChargerRepository repository;

    @MockBean
    private UserRepository repository2;

    @Test
    void testGetDcChargers() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        DcCharger testDcCharger = new DcCharger(1,34.2,true);

        List<DcCharger> myList = Arrays.asList(testDcCharger);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/dcchargersdb","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].maxPower", is(testDcCharger.getMaxPower())))
            .andExpect(jsonPath("$[0].isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/dcchargersdb","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneDcCharger () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        DcCharger testDcCharger = new DcCharger(1,34.2,true);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testDcCharger));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/dcchargersdb/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.maxPower", is(testDcCharger.getMaxPower())))
            .andExpect(jsonPath("$.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/dcchargersdb/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/{apikey}/dcchargersdb/{id}","123456789",2)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostDcCharger() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

		DcCharger testDcCharger = new DcCharger(150,3.45,true);

        newJson.put("id",150);
        newJson.put("maxPower",3.45);
        newJson.put("isDefaultChargingCurve",true);

        String json = newJson.toString();

        BDDMockito.when(repository.save(testDcCharger)).thenReturn(testDcCharger);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/dcchargersmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.maxPower", is(testDcCharger.getMaxPower())))
            .andExpect(jsonPath("$.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/dcchargersmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    @Test
	void testPutDcCharger() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        DcCharger firstDcCharger = new DcCharger(1,40.5,true);
        DcCharger testDcCharger = new DcCharger(1,42.5,false);

        newJson.put("id",1);
        newJson.put("maxPower",42.5);
        newJson.put("isDefaultChargingCurve",false);

        String json = newJson.toString();

        BDDMockito.when(repository.findById(firstDcCharger.getId())).thenReturn(Optional.of(firstDcCharger));
        BDDMockito.when(repository.save(testDcCharger)).thenReturn(testDcCharger);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/dcchargersmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.maxPower", is(testDcCharger.getMaxPower())))
            .andExpect(jsonPath("$.isDefaultChargingCurve", is(testDcCharger.getIsDefaultChargingCurve())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/dcchargersmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

            this.mockmvc.perform(put("/evcharge/api/{apikey}/dcchargersmod/{id}","123456789",151)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeleteDcCharger() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/dcchargersmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/dcchargersmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
}