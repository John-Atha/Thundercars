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

@WebMvcTest(SubmissionStatusController.class)
class SubmissionStatusTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private SubmissionStatusRepository repository;

    @MockBean
    private UserRepository repository2;
 
    @Test
    void testGetSubmissionStatus() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        SubmissionStatus testSubmissionStatus = new SubmissionStatus(1,"mytitle",true);

        List<SubmissionStatus> myList = Arrays.asList(testSubmissionStatus);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/submissionstatus","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].title", is(testSubmissionStatus.getTitle())))
            .andExpect(jsonPath("$[0].isLive", is(testSubmissionStatus.getIsLive())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/submissionstatus","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneSubmissionStatus () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        SubmissionStatus testSubmissionStatus = new SubmissionStatus(1,"mytitle",true);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testSubmissionStatus));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/submissionstatus/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testSubmissionStatus.getTitle())))
            .andExpect(jsonPath("$.isLive", is(testSubmissionStatus.getIsLive())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/submissionstatus/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
        
        this.mockmvc.perform(get("/evcharge/api/{apikey}/submissionstatus/{id}","123456789",10000)
        .contentType(MediaType.APPLICATION_JSON))
        .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostSubmissionStatus() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        SubmissionStatus testSubmissionStatus = new SubmissionStatus(1,"mytitle",true);

        newJson.put("id",1);
        newJson.put("title","mytitle");
        newJson.put("isLive",true);

        String json = newJson.toString();

        BDDMockito.when(repository.save(testSubmissionStatus)).thenReturn(testSubmissionStatus);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/submissionstatusmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testSubmissionStatus.getTitle())))
            .andExpect(jsonPath("$.isLive", is(testSubmissionStatus.getIsLive())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/submissionstatusmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    @Test
	void testPutSubmissionStatus() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        SubmissionStatus firstSubmissionStatus = new SubmissionStatus(1,"mytitle",true);

        SubmissionStatus testSubmissionStatus = new SubmissionStatus(1,"newtitle",false);

        newJson.put("id",1);
        newJson.put("title","newtitle");
        newJson.put("isLive",false);
        String json = newJson.toString();

        BDDMockito.when(repository.findById(firstSubmissionStatus.getId())).thenReturn(Optional.of(firstSubmissionStatus));
        BDDMockito.when(repository.save(testSubmissionStatus)).thenReturn(testSubmissionStatus);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/submissionstatusmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testSubmissionStatus.getTitle())))
            .andExpect(jsonPath("$.isLive", is(testSubmissionStatus.getIsLive())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/submissionstatusmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/{apikey}/submissionstatusmod/{id}","123456789",10000)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeleteSubmissionStatus() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/submissionstatusmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/submissionstatusmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
    
}