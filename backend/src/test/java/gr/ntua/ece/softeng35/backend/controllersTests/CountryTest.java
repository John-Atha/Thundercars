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

@WebMvcTest(CountryController.class)
class CountryTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private CountryRepository repository;

    @MockBean
    private UserRepository repository2;
 
    @Test
    void testGetCountries() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");

        List<Country> myList = Arrays.asList(testCountry);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/countries","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$[0].isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$[0].continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/countries","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneCountry () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Country testCountry = new Country(1,"mytitle","iso2", "cont2");

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testCountry));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/countries/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/countries/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
        
        this.mockmvc.perform(get("/evcharge/api/{apikey}/countries/{id}","123456789",10000)
        .contentType(MediaType.APPLICATION_JSON))
        .andExpect(status().isPaymentRequired());
    }

    @Test
	void testPostCountry() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

		Country testCountry = new Country(1,"mytitle","myiso", "mycont");

        newJson.put("id",1);
        newJson.put("title","mytitle");
        newJson.put("isocode","myiso");
        newJson.put("continentCode","mycont");

        String json = newJson.toString();

        BDDMockito.when(repository.save(testCountry)).thenReturn(testCountry);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/countriesmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/countriesmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    @Test
	void testPutCountry() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        Country firstCountry = new Country(1,"mytitle","myiso", "mycont");

		Country testCountry = new Country(1,"newtitle","newiso", "newcont");

        newJson.put("id",1);
        newJson.put("title","newtitle");
        newJson.put("isocode","newiso");
        newJson.put("continentCode","newcont");

        String json = newJson.toString();

        BDDMockito.when(repository.findById(firstCountry.getId())).thenReturn(Optional.of(firstCountry));
        BDDMockito.when(repository.save(testCountry)).thenReturn(testCountry);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/countriesmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/countriesmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/{apikey}/countriesmod/{id}","123456789",10000)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}

    @Test 
    void testDeleteCountry() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/countriesmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/countriesmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
    
}