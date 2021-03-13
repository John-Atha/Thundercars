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

@WebMvcTest(UserAddressController.class)
class UserAddressTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private UserAddressRepository repository;

    @MockBean
    private CountryRepository repository1;

    @MockBean
    private UserRepository repository2;
 
    @Test
    void testGetUserAddress() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");

        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        List<UserAddress> myList = Arrays.asList(testUserAddress);

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/useraddresses","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$[0].country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$[0].country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$[0].country.continentCode", is(testCountry.getContinentCode())))
            .andExpect(jsonPath("$[0].town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$[0].stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$[0].postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$[0].contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$[0].contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$[0].userAddressLine1", is(testUserAddress.getUserAddressLine1())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/useraddresses","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneUserAddress () throws Exception {

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");

        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testUserAddress));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/useraddresses/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$.country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/useraddresses/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
        
        this.mockmvc.perform(get("/evcharge/api/{apikey}/useraddresses/{id}","123456789",10000)
        .contentType(MediaType.APPLICATION_JSON))
        .andExpect(status().isPaymentRequired());
    }

    @Test
    void testPostUserAddress() throws Exception {
    
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        //Country testCountry;// = repository1.findById(1);
        Country testCountry = new Country(1,"mytitle","iso2", "cont2");

        BDDMockito.when(repository1.findById(1)).thenReturn(Optional.of(testCountry));

        //testCountry = repository1.findById(1);

        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                "testPhone1", "testPhone2", testCountry);

        ObjectNode countryJson = mapper.createObjectNode();
        countryJson.put("id", testCountry.getId());
        countryJson.put("title", testCountry.getTitle());
        countryJson.put("isocode", testCountry.getISOCode());
        countryJson.put("continentCode", testCountry.getContinentCode());

        newJson.put("id", 1);
        newJson.put("userAddressLine1", "test_address_line");
        newJson.put("town", "testTown");
        newJson.put("stateOrProvince", "TestState");
        newJson.put("postcode", "TestPostcode");
        newJson.put("contactTelephone1", "testPhone1");
        newJson.put("contactTelephone2", "testPhone2");
        newJson.put("country", countryJson);

        String json = newJson.toString();

        BDDMockito.when(repository.save(testUserAddress)).thenReturn(testUserAddress);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(post("/evcharge/api/{apikey}/useraddressesmod","123456789")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(jsonPath("$.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$.country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(post("/evcharge/api/{apikey}/useraddressesmod","123456888")
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testPutUserAddress() throws Exception {
    
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        ObjectMapper mapper = new ObjectMapper();
        ObjectNode newJson = mapper.createObjectNode();

        Country firstCountry = new Country(1, "mytitle", "myiso", "mycont");
        Country testCountry = new Country(2, "newtitle2", "newiso2", "newcont2");

        UserAddress firstUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", firstCountry);        
        UserAddress testUserAddress = new UserAddress(1,"new_address_line", "newTown", "newState", "newPostcode",
                        "newPhone1", "newPhone2", testCountry);

        ObjectNode countryJson = mapper.createObjectNode();
        countryJson.put("id", testCountry.getId());
        countryJson.put("title", testCountry.getTitle());
        countryJson.put("isocode", testCountry.getISOCode());
        countryJson.put("continentCode", testCountry.getContinentCode());

        newJson.put("id", 1);
        newJson.put("userAddressLine1", "new_address_line");
        newJson.put("town", "newTown");
        newJson.put("stateOrProvince", "newState");
        newJson.put("postcode", "newPostcode");
        newJson.put("contactTelephone1", "newPhone1");
        newJson.put("contactTelephone2", "newPhone2");
        newJson.put("country", countryJson);

        String json = newJson.toString();


        BDDMockito.when(repository1.findById(firstCountry.getId())).thenReturn(Optional.of(firstCountry));
        BDDMockito.when(repository1.findById(testCountry.getId())).thenReturn(Optional.of(testCountry));

        BDDMockito.when(repository.findById(firstUserAddress.getId())).thenReturn(Optional.of(firstUserAddress));
        BDDMockito.when(repository.save(testUserAddress)).thenReturn(testUserAddress);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(put("/evcharge/api/{apikey}/useraddressesmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON)
            .content(json))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$.country.continentCode", is(testCountry.getContinentCode())));

        // this.mockmvc.perform(put("/evcharge/api/{apikey}/useraddressessmod/{id}","123456888",1)
        //     .contentType(MediaType.APPLICATION_JSON)
        //     .content(json))
        //     .andExpect(status().isUnauthorized());

        // this.mockmvc.perform(put("/evcharge/api/{apikey}/useraddressessmod/{id}","123456789",10000)
        //     .contentType(MediaType.APPLICATION_JSON)
        //     .content(json))
        //     .andExpect(status().isBadRequest());
    }

    @Test 
    void testDeleteUserAddresses() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/useraddressesmod/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/{apikey}/useraddressesmod/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
    
}