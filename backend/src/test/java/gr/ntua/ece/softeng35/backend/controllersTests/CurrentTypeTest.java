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

@WebMvcTest(CurrentTypeController.class)
class CurrentTypeTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private CurrentTypeRepository repository;

    @MockBean
    private UserRepository repository2;
 
    @Test
    void testGetCurrentTypes() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        CurrentType testCurrentType = new CurrentType(1,"mytitle","mydescription");

        List<CurrentType> myList = Arrays.asList(testCurrentType);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/currenttypes","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].title", is(testCurrentType.getTitle())))
            .andExpect(jsonPath("$[0].description", is(testCurrentType.getDescription())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/currenttypes","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneCurrentType () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        CurrentType testCurrentType = new CurrentType(1,"mytitle","mydescription");

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testCurrentType));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/currenttypes/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testCurrentType.getTitle())))
            .andExpect(jsonPath("$.description", is(testCurrentType.getDescription())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/currenttypes/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
        
        this.mockmvc.perform(get("/evcharge/api/{apikey}/currenttypes/{id}","123456789",10000)
        .contentType(MediaType.APPLICATION_JSON))
        .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostCurrentType() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

		CurrentType testCurrentType = new CurrentType(1,"mytitle","mydescription");

        newJson.put("id",1);
        newJson.put("title","mytitle");
        newJson.put("description","mydescription");

        String json = newJson.toString();

        BDDMockito.when(repository.save(testCurrentType)).thenReturn(testCurrentType);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/currenttypesmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testCurrentType.getTitle())))
            .andExpect(jsonPath("$.description", is(testCurrentType.getDescription())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/currenttypesmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    @Test
	void testPutCurrentType() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        CurrentType firstCurrentType = new CurrentType(1,"mytitle","mydescription");

		CurrentType testCurrentType = new CurrentType(1,"newtitle","newdescription");

        newJson.put("id",15);
        newJson.put("title","newtitle");
        newJson.put("description","newdescription");

        String json = newJson.toString();

        BDDMockito.when(repository.findById(firstCurrentType.getId())).thenReturn(Optional.of(firstCurrentType));
        BDDMockito.when(repository.save(testCurrentType)).thenReturn(testCurrentType);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/currenttypesmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testCurrentType.getTitle())))
            .andExpect(jsonPath("$.description", is(testCurrentType.getDescription())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/currenttypesmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/{apikey}/currenttypesmod/{id}","123456789",10000)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeleteCurrentType() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/currenttypesmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/currenttypesmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
    
}