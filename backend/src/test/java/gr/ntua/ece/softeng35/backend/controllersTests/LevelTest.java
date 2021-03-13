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


@WebMvcTest(LevelController.class)
class LevelTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private LevelRepository repository;

    @MockBean
    private UserRepository repository2;

    @Test
    void testGetLevels() throws Exception { 
    
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Level testLevel = new Level(1,"low","",true);

        List<Level> myList = Arrays.asList(testLevel);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/levels","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].id", is(testLevel.getId())))
            .andExpect(jsonPath("$[0].title", is(testLevel.getTitle())))
            .andExpect(jsonPath("$[0].comments", is(testLevel.getComments())))
            .andExpect(jsonPath("$[0].isFastChargeCapable", is(testLevel.getIsFastChargeCapable())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/levels","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneLevel () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Level testLevel = new Level(1,"low","",true);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testLevel));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/levels/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(testLevel.getId())))
            .andExpect(jsonPath("$.title", is(testLevel.getTitle())))
            .andExpect(jsonPath("$.comments", is(testLevel.getComments())))
            .andExpect(jsonPath("$.isFastChargeCapable", is(testLevel.getIsFastChargeCapable())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/levels/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/{apikey}/levels/{id}","123456789",2)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostLevel() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        Level testLevel = new Level(1,"low","",true);

        newJson.put("id",1);
        newJson.put("title","low");
        newJson.put("comments","");
        newJson.put("isFastChargeCapable",true);

        String json = newJson.toString();

        BDDMockito.when(repository.save(testLevel)).thenReturn(testLevel);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/levelsmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(testLevel.getId())))
            .andExpect(jsonPath("$.title", is(testLevel.getTitle())))
            .andExpect(jsonPath("$.comments", is(testLevel.getComments())))
            .andExpect(jsonPath("$.isFastChargeCapable", is(testLevel.getIsFastChargeCapable())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/levelsmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    @Test
	void testPutLevel() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        Level firstLevel = new Level(1,"high","a",false);
        Level testLevel = new Level(1,"low","",true);

        newJson.put("id",1);
        newJson.put("title","low");
        newJson.put("comments","");
        newJson.put("isFastChargeCapable",true);

        String json = newJson.toString();

        BDDMockito.when(repository.findById(firstLevel.getId())).thenReturn(Optional.of(firstLevel));
        BDDMockito.when(repository.save(testLevel)).thenReturn(testLevel);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/levelsmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(testLevel.getId())))
            .andExpect(jsonPath("$.title", is(testLevel.getTitle())))
            .andExpect(jsonPath("$.comments", is(testLevel.getComments())))
            .andExpect(jsonPath("$.isFastChargeCapable", is(testLevel.getIsFastChargeCapable())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/levelsmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/{apikey}/levelsmod/{id}","123456789",151)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeleteLevel() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/levelsmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/levelsmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
}