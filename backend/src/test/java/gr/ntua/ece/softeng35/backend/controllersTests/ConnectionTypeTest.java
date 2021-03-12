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

@WebMvcTest(ConnectionTypeController.class)
class ConnectionTypeTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private ConnectionTypeRepository repository;

    @MockBean
    private UserRepository repository2;
 
    @Test
    void testGetConnectionTypes() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ConnectionType testConnectionType = new ConnectionType(1,"mytitle","myformalname", "mycategory");

        List<ConnectionType> myList = Arrays.asList(testConnectionType);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/connectiontypes","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].title", is(testConnectionType.getTitle())))
            .andExpect(jsonPath("$[0].formalName", is(testConnectionType.getFormalName())))
            .andExpect(jsonPath("$[0].category", is(testConnectionType.getCategory())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/connectiontypes","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneConnectionType () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ConnectionType testConnectionType = new ConnectionType(1,"mytitle","myformalname", "mycategory");

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testConnectionType));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/connectiontypes/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testConnectionType.getTitle())))
            .andExpect(jsonPath("$.formalName", is(testConnectionType.getFormalName())))
            .andExpect(jsonPath("$.category", is(testConnectionType.getCategory())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/connectiontypes/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
        
        this.mockmvc.perform(get("/evcharge/api/{apikey}/connectiontypes/{id}","123456789",10000)
        .contentType(MediaType.APPLICATION_JSON))
        .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostConnectionType() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

		ConnectionType testConnectionType = new ConnectionType(1,"mytitle","myformalname", "mycategory");

        newJson.put("id",1);
        newJson.put("title","mytitle");
        newJson.put("formalName","myformalname");
        newJson.put("category","mycategory");

        String json = newJson.toString();

        BDDMockito.when(repository.save(testConnectionType)).thenReturn(testConnectionType);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/connectiontypesmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testConnectionType.getTitle())))
            .andExpect(jsonPath("$.formalName", is(testConnectionType.getFormalName())))
            .andExpect(jsonPath("$.category", is(testConnectionType.getCategory())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/connectiontypesmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    @Test
	void testPutConnectionType() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        ConnectionType firstConnectionType = new ConnectionType(1,"mytitle","myformalname", "mycategory");

		ConnectionType testConnectionType = new ConnectionType(1,"newtitle","newformalname", "newcategory");

        newJson.put("id",15);
        newJson.put("title","newtitle");
        newJson.put("formalName","newformalname");
        newJson.put("category","newcategory");

        String json = newJson.toString();

        BDDMockito.when(repository.findById(firstConnectionType.getId())).thenReturn(Optional.of(firstConnectionType));
        BDDMockito.when(repository.save(testConnectionType)).thenReturn(testConnectionType);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/connectiontypesmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testConnectionType.getTitle())))
            .andExpect(jsonPath("$.formalName", is(testConnectionType.getFormalName())))
            .andExpect(jsonPath("$.category", is(testConnectionType.getCategory())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/connectiontypesmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/{apikey}/connectiontypesmod/{id}","123456789",10000)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeleteConnectionType() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/connectiontypesmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/connectiontypesmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
    
}