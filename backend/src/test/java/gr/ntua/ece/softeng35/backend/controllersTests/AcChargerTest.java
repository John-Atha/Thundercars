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


@WebMvcTest(AcChargerController.class)
class AcChargerTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private AcChargerRepository repository;

    @MockBean
    private UserRepository repository2;

    @Test
	void testPostAcCharger() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

		AcCharger testAcCharger = new AcCharger(150,3,3.45);

        newJson.put("id",150);
        newJson.put("usablePhases",3);
        newJson.put("maxPower",3.45);

        String json = newJson.toString();

        BDDMockito.when(repository.save(testAcCharger)).thenReturn(testAcCharger);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/acchargersmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$.maxPower", is(testAcCharger.getMaxPower())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/acchargersmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    
    @Test
	void testPutAcCharger() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        AcCharger firstAcCharger = new AcCharger(1,4,7.2);

		AcCharger testAcCharger = new AcCharger(1,3,3.45);

        newJson.put("id",1);
        newJson.put("usablePhases",3);
        newJson.put("maxPower",3.45);

        String json = newJson.toString();

        BDDMockito.when(repository.findById(firstAcCharger.getId())).thenReturn(Optional.of(firstAcCharger));
        BDDMockito.when(repository.save(testAcCharger)).thenReturn(testAcCharger);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/acchargersmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.usablePhases", is(testAcCharger.getUsablePhases())))
            .andExpect(jsonPath("$.maxPower", is(testAcCharger.getMaxPower())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/acchargersmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    @Test 
    void testDeleteAcCharger() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/acchargersmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/acchargersmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
    /*
    @Test
    void shouldThrowAcChargerNotFoundException() throws Exception {
        try{
            MockitoAnnotations.initMocks(this);
            this.mockmvc = webAppContextSetup(this.wac).build();

            ObjectMapper mapper = new ObjectMapper();
            ObjectNode newJson = mapper.createObjectNode();

            AcCharger firstAcCharger = new AcCharger(1,4,7.2);

            AcCharger testAcCharger = new AcCharger(1,3,3.45);

            newJson.put("id",1);
            newJson.put("usablePhases",3);
            newJson.put("maxPower",3.45);

            String json = newJson.toString();

            BDDMockito.when(repository.findById(firstAcCharger.getId())).thenReturn(Optional.of(firstAcCharger));
            BDDMockito.when(repository.save(testAcCharger)).thenReturn(testAcCharger);

            List<Integer> apiKeys = new ArrayList<>();
            apiKeys.add(1);

            BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

            this.mockmvc.perform(put("/evcharge/api/{apikey}/acchargersmod/{id}","123456789",2)
                .contentType(MediaType.APPLICATION_JSON)
                .content(json));
        }
        catch(RuntimeException re) {
            String message = "Could not find Ac Charger with id 2";
            assertEquals(message,re.getMessage());
            throw re;
        }
    }*/

}