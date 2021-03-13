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

@WebMvcTest(StatusTypeController.class)
class StatusTypeClass {
	@Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private StatusTypeRepository repository;

    @MockBean
    private UserRepository repository2;
    
    @Test
    void testGetStatusTypes() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        StatusType testStatusType = new StatusType(1,"mytitle",true, false);

        List<StatusType> myList = Arrays.asList(testStatusType);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/statustypes","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].title", is(testStatusType.getTitle())))
            .andExpect(jsonPath("$[0].isOperational", is(testStatusType.getIsOperational())))
            .andExpect(jsonPath("$[0].isUserSelectable", is(testStatusType.getIsUserSelectable())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/statustypes","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneStatusType () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        StatusType testStatusType = new StatusType(1,"mytitle",true, false);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testStatusType));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/statustypes/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testStatusType.getTitle())))
            .andExpect(jsonPath("$.isOperational", is(testStatusType.getIsOperational())))
            .andExpect(jsonPath("$.isUserSelectable", is(testStatusType.getIsUserSelectable())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/statustypes/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
        
        this.mockmvc.perform(get("/evcharge/api/{apikey}/statustypes/{id}","123456789",10000)
        .contentType(MediaType.APPLICATION_JSON))
        .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostStatusType() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        StatusType testStatusType = new StatusType(1,"mytitle",true, false);

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();


        newJson.put("id",1);
        newJson.put("title","mytitle");
        newJson.put("isOperational", true);
        newJson.put("isUserSelectable", false);

        String json = newJson.toString();

        BDDMockito.when(repository.save(testStatusType)).thenReturn(testStatusType);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/statustypesmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testStatusType.getTitle())))
            .andExpect(jsonPath("$.isOperational", is(testStatusType.getIsOperational())))
            .andExpect(jsonPath("$.isUserSelectable", is(testStatusType.getIsUserSelectable())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/statustypesmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

	@Test
	void testPutStatusType() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        StatusType firstStatusType = new StatusType(1,"mytitle",true, false);
		StatusType testStatusType = new StatusType(1,"newtitle",false, false);

        newJson.put("id",1);
        newJson.put("title","newtitle");
        newJson.put("isOperational",false);
        newJson.put("isUserSelectable",false);

        String json = newJson.toString();

        BDDMockito.when(repository.findById(firstStatusType.getId())).thenReturn(Optional.of(firstStatusType));
        BDDMockito.when(repository.save(testStatusType)).thenReturn(testStatusType);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/statustypesmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testStatusType.getTitle())))
            .andExpect(jsonPath("$.isOperational", is(testStatusType.getIsOperational())))
            .andExpect(jsonPath("$.isUserSelectable", is(testStatusType.getIsUserSelectable())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/statustypesmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/{apikey}/statustypesmod/{id}","123456789",10000)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}

	@Test 
    void testDeleteStatusType() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/statustypesmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/statustypesmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
}