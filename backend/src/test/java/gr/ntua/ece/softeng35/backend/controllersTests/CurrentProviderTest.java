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

@WebMvcTest(CurrentProviderController.class)
class CurrentProviderTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    
    @MockBean
    private CurrentProviderRepository repository;

    @MockBean
    private CountryRepository repository1;

    @MockBean
    private UserRepository repository2;
 
    @Test
    void testGetCurrentProviders() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        CurrentProvider testCurrentProvider = new CurrentProvider(1, "provName");
        testCurrentProvider.setCountry(testCountry);

        List<CurrentProvider> myList = Arrays.asList(testCurrentProvider);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/currentproviders","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].name", is(testCurrentProvider.getName())))
            .andExpect(jsonPath("$[0].country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$[0].country.continentCode", is(testCountry.getContinentCode())))
            .andExpect(jsonPath("$[0].country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$[0].country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/currentproviders","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneCurrentProvider () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Country testCountry = new Country(1,"mytitle","iso2", "cont2");
        CurrentProvider testCurrentProvider = new CurrentProvider(1, "provName");
        testCurrentProvider.setCountry(testCountry);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testCurrentProvider));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/currentproviders/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.name", is(testCurrentProvider.getName())))
            .andExpect(jsonPath("$.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$.country.continentCode", is(testCountry.getContinentCode())))
            .andExpect(jsonPath("$.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/currentproviders/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
        
        this.mockmvc.perform(get("/evcharge/api/{apikey}/currentproviders/{id}","123456789",10000)
        .contentType(MediaType.APPLICATION_JSON))
        .andExpect(status().isPaymentRequired());
    }

    
    @Test
	void testPostCurrentProvider() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

		//Country testCountry;// = repository1.findById(1);
        Country testCountry = new Country(1,"mytitle","iso2", "cont2");

        BDDMockito.when(repository1.findById(1)).thenReturn(Optional.of(testCountry));

        //testCountry = repository1.findById(1);

        CurrentProvider testCurrentProvider = new CurrentProvider(1, "myname");
        testCurrentProvider.setCountry(testCountry);

        ObjectNode countryJson = mapper.createObjectNode();
        countryJson.put("id", testCountry.getId());
        countryJson.put("title", testCountry.getTitle());
        countryJson.put("isocode", testCountry.getISOCode());
        countryJson.put("continentCode", testCountry.getContinentCode());

        newJson.put("id", 1);
        newJson.put("name", "myname");
        newJson.put("country", countryJson);

        String json = newJson.toString();

        BDDMockito.when(repository.save(testCurrentProvider)).thenReturn(testCurrentProvider);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/currentprovidersmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.name", is(testCurrentProvider.getName())))
            .andExpect(jsonPath("$.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$.country.continentCode", is(testCountry.getContinentCode())))
            .andExpect(jsonPath("$.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/currentprovidersmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
	}

    
    @Test
	void testPutCurrentProvider() throws Exception {
	
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        Country firstCountry = new Country(1, "mytitle", "myiso", "mycont");
		Country testCountry = new Country(2, "newtitle2", "newiso2", "newcont2");

        CurrentProvider firstCurrentProvider = new CurrentProvider(1,"myname");
        firstCurrentProvider.setCountry(firstCountry);
		CurrentProvider testCurrentProvider = new CurrentProvider(1,"newname");
        testCurrentProvider.setCountry(testCountry);

        ObjectNode countryJson = mapper.createObjectNode();
        countryJson.put("id", testCountry.getId());
        countryJson.put("title", testCountry.getTitle());
        countryJson.put("isocode", testCountry.getISOCode());
        countryJson.put("continentCode", testCountry.getContinentCode());

        newJson.put("id", 1);
        newJson.put("name", "newname");
        newJson.put("country", countryJson);

        String json = newJson.toString();


        BDDMockito.when(repository1.findById(firstCountry.getId())).thenReturn(Optional.of(firstCountry));
        BDDMockito.when(repository1.findById(testCountry.getId())).thenReturn(Optional.of(testCountry));

        BDDMockito.when(repository.findById(firstCurrentProvider.getId())).thenReturn(Optional.of(firstCurrentProvider));
        BDDMockito.when(repository.save(testCurrentProvider)).thenReturn(testCurrentProvider);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/currentprovidersmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.name", is(testCurrentProvider.getName())))
            .andExpect(jsonPath("$.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$.country.continentCode", is(testCountry.getContinentCode())))
            .andExpect(jsonPath("$.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(put("/evcharge/api/{apikey}/currentprovidersmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(put("/evcharge/api/{apikey}/currentprovidersmod/{id}","123456789",10000)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isBadRequest());
	}
    

    
    @Test 
    void testDeleteCurrentProvider() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/currentprovidersmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/currentprovidersmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
    
}