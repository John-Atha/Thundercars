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

    @MockBean
    private StationOwnerRepository repository4;

    @MockBean
    private AdminRepository repository5;
    
    @Test
    void testGetStatusTypes() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        StatusType testStatusType = new StatusType(1,"mytitle",true, false);

        List<StatusType> myList = Arrays.asList(testStatusType);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/statustypes")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].title", is(testStatusType.getTitle())))
            .andExpect(jsonPath("$[0].isOperational", is(testStatusType.getIsOperational())))
            .andExpect(jsonPath("$[0].isUserSelectable", is(testStatusType.getIsUserSelectable())));

        this.mockmvc.perform(get("/evcharge/api/statustypes")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneStatusType () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        StatusType testStatusType = new StatusType(1,"mytitle",true, false);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testStatusType));

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/statustypes/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testStatusType.getTitle())))
            .andExpect(jsonPath("$.isOperational", is(testStatusType.getIsOperational())))
            .andExpect(jsonPath("$.isUserSelectable", is(testStatusType.getIsUserSelectable())));

        this.mockmvc.perform(get("/evcharge/api/statustypes/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
        
        this.mockmvc.perform(get("/evcharge/api/statustypes/{id}",10000)
        .contentType(MediaType.APPLICATION_JSON)
        .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
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

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(post("/evcharge/api/statustypesmod")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testStatusType.getTitle())))
            .andExpect(jsonPath("$.isOperational", is(testStatusType.getIsOperational())))
            .andExpect(jsonPath("$.isUserSelectable", is(testStatusType.getIsUserSelectable())));

        this.mockmvc.perform(post("/evcharge/api/statustypesmod")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
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

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(put("/evcharge/api/statustypesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testStatusType.getTitle())))
            .andExpect(jsonPath("$.isOperational", is(testStatusType.getIsOperational())))
            .andExpect(jsonPath("$.isUserSelectable", is(testStatusType.getIsUserSelectable())));

        this.mockmvc.perform(put("/evcharge/api/statustypesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/statustypesmod/{id}",10000)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isBadRequest());
	}

	@Test 
    void testDeleteStatusType() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(delete("/evcharge/api/statustypesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/statustypesmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }
}