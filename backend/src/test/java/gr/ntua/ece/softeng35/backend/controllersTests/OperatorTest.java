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


@WebMvcTest(OperatorController.class)
class OperatorTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private OperatorRepository repository;

    @MockBean
    private UserRepository repository2;

    @MockBean
    private StationOwnerRepository repository4;

    @MockBean
    private AdminRepository repository5;

    @Test
    void testGetOperators() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Operator testOperator = new Operator(1,"mytitle","myUrl","mycomms","myphone1","myphone2",false,"mybookUrl","myEmail","myFault",true);

        List<Operator> myList = Arrays.asList(testOperator);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/operators")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].id", is(testOperator.getId())))
            .andExpect(jsonPath("$[0].title", is(testOperator.getTitle())))
            .andExpect(jsonPath("$[0].websiteUrl", is(testOperator.getWebsiteUrl())))
            .andExpect(jsonPath("$[0].comments", is(testOperator.getComments())))
            .andExpect(jsonPath("$[0].primaryPhone", is(testOperator.getPrimaryPhone())))
            .andExpect(jsonPath("$[0].secondaryPhone", is(testOperator.getSecondaryPhone())))
            .andExpect(jsonPath("$[0].isPrivateIndividual", is(testOperator.getIsPrivateIndividual())))
            .andExpect(jsonPath("$[0].bookingUrl", is(testOperator.getBookingUrl())))
            .andExpect(jsonPath("$[0].contactEmail", is(testOperator.getContactEmail())))
            .andExpect(jsonPath("$[0].faultReportEmail", is(testOperator.getFaultReportEmail())))
            .andExpect(jsonPath("$[0].isRestrictedEdit", is(testOperator.getIsRestrictedEdit())));


        this.mockmvc.perform(get("/evcharge/api/operators")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneOperator () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Operator testOperator = new Operator(1,"mytitle","myUrl","mycomms","myphone1","myphone2",false,"mybookUrl","myEmail","myFault",true);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testOperator));

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/operators/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(testOperator.getId())))
            .andExpect(jsonPath("$.title", is(testOperator.getTitle())))
            .andExpect(jsonPath("$.websiteUrl", is(testOperator.getWebsiteUrl())))
            .andExpect(jsonPath("$.comments", is(testOperator.getComments())))
            .andExpect(jsonPath("$.primaryPhone", is(testOperator.getPrimaryPhone())))
            .andExpect(jsonPath("$.secondaryPhone", is(testOperator.getSecondaryPhone())))
            .andExpect(jsonPath("$.isPrivateIndividual", is(testOperator.getIsPrivateIndividual())))
            .andExpect(jsonPath("$.bookingUrl", is(testOperator.getBookingUrl())))
            .andExpect(jsonPath("$.contactEmail", is(testOperator.getContactEmail())))
            .andExpect(jsonPath("$.faultReportEmail", is(testOperator.getFaultReportEmail())))
            .andExpect(jsonPath("$.isRestrictedEdit", is(testOperator.getIsRestrictedEdit())));

        this.mockmvc.perform(get("/evcharge/api/operators/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/operators/{id}",2)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isPaymentRequired());
    }


    @Test
    void testPostOperator() throws Exception {
    
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        Operator testOperator = new Operator(1,"mytitle","myUrl","mycomms","myphone1","myphone2",false,"mybookUrl","myEmail","myFault",true);

        newJson.put("id",1);
        newJson.put("title","mytitle");
        newJson.put("websiteUrl","myUrl");
        newJson.put("comments","mycomms");
        newJson.put("primaryPhone","myphone1");
        newJson.put("secondaryPhone","myphone2");
        newJson.put("isPrivateIndividual",false);
        newJson.put("bookingUrl","mybookUrl");
        newJson.put("contactEmail","myEmail");
        newJson.put("isRestrictedEdit",true);
        newJson.put("faultReportEmail","myFault");
        
        
        String json = newJson.toString();
        System.out.println(json);

        BDDMockito.when(repository.save(testOperator)).thenReturn(testOperator);

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(post("/evcharge/api/operatorsmod")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testOperator.getTitle())))
            .andExpect(jsonPath("$.websiteUrl", is(testOperator.getWebsiteUrl())))
            .andExpect(jsonPath("$.comments", is(testOperator.getComments())))
            .andExpect(jsonPath("$.primaryPhone", is(testOperator.getPrimaryPhone())))
            .andExpect(jsonPath("$.secondaryPhone", is(testOperator.getSecondaryPhone())))
            .andExpect(jsonPath("$.isPrivateIndividual", is(testOperator.getIsPrivateIndividual())))
            .andExpect(jsonPath("$.bookingUrl", is(testOperator.getBookingUrl())))
            .andExpect(jsonPath("$.contactEmail", is(testOperator.getContactEmail())))
            .andExpect(jsonPath("$.isRestrictedEdit", is(testOperator.getIsRestrictedEdit())))
            .andExpect(jsonPath("$.faultReportEmail", is(testOperator.getFaultReportEmail())));

        this.mockmvc.perform(post("/evcharge/api/operatorsmod")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }

    @Test
	void testPutOperator() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        Operator firstOperator = new Operator(1,"mytitle1","myUrl1","mycomms1","myphone11","myphone21",false,"mybookUrl1","myEmail1","myFault1",false);

        Operator testOperator = new Operator(1,"mytitle","myUrl","mycomms","myphone1","myphone2",false,"mybookUrl","myEmail","myFault",true);

        newJson.put("id",1);
        newJson.put("title","mytitle");
        newJson.put("websiteUrl","myUrl");
        newJson.put("comments","mycomms");
        newJson.put("primaryPhone","myphone1");
        newJson.put("secondaryPhone","myphone2");
        newJson.put("isPrivateIndividual",false);
        newJson.put("bookingUrl","mybookUrl");
        newJson.put("contactEmail","myEmail");
        newJson.put("isRestrictedEdit",true);
        newJson.put("faultReportEmail","myFault");

        String json = newJson.toString();

        BDDMockito.when(repository.findById(firstOperator.getId())).thenReturn(Optional.of(firstOperator));
        BDDMockito.when(repository.save(testOperator)).thenReturn(testOperator);

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(put("/evcharge/api/operatorsmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testOperator.getTitle())))
            .andExpect(jsonPath("$.websiteUrl", is(testOperator.getWebsiteUrl())))
            .andExpect(jsonPath("$.comments", is(testOperator.getComments())))
            .andExpect(jsonPath("$.primaryPhone", is(testOperator.getPrimaryPhone())))
            .andExpect(jsonPath("$.secondaryPhone", is(testOperator.getSecondaryPhone())))
            .andExpect(jsonPath("$.isPrivateIndividual", is(testOperator.getIsPrivateIndividual())))
            .andExpect(jsonPath("$.bookingUrl", is(testOperator.getBookingUrl())))
            .andExpect(jsonPath("$.contactEmail", is(testOperator.getContactEmail())))
            .andExpect(jsonPath("$.isRestrictedEdit", is(testOperator.getIsRestrictedEdit())))
            .andExpect(jsonPath("$.faultReportEmail", is(testOperator.getFaultReportEmail())));

        this.mockmvc.perform(put("/evcharge/api/operatorsmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());

            this.mockmvc.perform(put("/evcharge/api/operatorsmod/{id}",151)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeleteOperator() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(delete("/evcharge/api/operatorsmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/operatorsmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }
}