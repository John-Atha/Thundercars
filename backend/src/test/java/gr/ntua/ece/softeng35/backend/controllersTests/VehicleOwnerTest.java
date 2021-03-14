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

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;    
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.sql.Date;

@WebMvcTest(UserHasVehicleController.class)
class VehicleOwnerTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private UserHasVehicleRepository repository;

    @MockBean
    private UserRepository repository2;
    
    @MockBean
    private AcChargerRepository repository11;
    
    @MockBean
    private DcChargerRepository repository12;
    
    @MockBean
    private CountryRepository repository1;
    
    @MockBean
    private VehicleRepository repository13;

    @MockBean
    private UserAddressRepository repository14;
 
    @Test
    void testGetUsers() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();
        Date date = java.sql.Date.valueOf(LocalDate.parse("20201010", DateTimeFormatter.BASIC_ISO_DATE));

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        User testUser = new User("user1", "pass1", "email1" , "name1", "name2" , date, testUserAddress,"apikey" );

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/users","123456789")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].user.id", is(testUser.getId())))
            .andExpect(jsonPath("$[0].user.username", is(testUser.getUsername())))
            .andExpect(jsonPath("$[0].user.password", is(testUser.getPassword())))
            .andExpect(jsonPath("$[0].user.emailAddr", is(testUser.getEmailAddr())))
            .andExpect(jsonPath("$[0].user.firstName", is(testUser.getFirstName())))
            .andExpect(jsonPath("$[0].user.lastName", is(testUser.getLastName())))
            .andExpect(jsonPath("$[0].user.apiKey", is(testUser.getapiKey())))
            .andExpect(jsonPath("$[0].user.userAddress.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$[0].user.userAddress.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$[0].user.userAddress.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$[0].user.userAddress.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$[0].user.userAddress.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$[0].user.userAddress.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$[0].user.userAddress.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$[0].user.userAddress.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$[0].user.userAddress.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$[0].user.userAddress.country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/users","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneUsers() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();
        Date date = java.sql.Date.valueOf(LocalDate.parse("20201010", DateTimeFormatter.BASIC_ISO_DATE));

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        User testUser = new User("user1", "pass1", "email1" , "name1", "name2" , date, testUserAddress,"apikey" );



        BDDMockito.when(repository.findById(1)).thenReturn(Optional.of(testUserHasVehicle));

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/users/{id}","123456789",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.user.id", is(testUser.getId())))
            .andExpect(jsonPath("$.user.username", is(testUser.getUsername())))
            .andExpect(jsonPath("$.user.password", is(testUser.getPassword())))
            .andExpect(jsonPath("$.user.emailAddr", is(testUser.getEmailAddr())))
            .andExpect(jsonPath("$.user.firstName", is(testUser.getFirstName())))
            .andExpect(jsonPath("$.user.lastName", is(testUser.getLastName())))
            .andExpect(jsonPath("$.user.apiKey", is(testUser.getapiKey())))
            .andExpect(jsonPath("$.user.userAddress.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$.user.userAddress.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$.user.userAddress.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$.user.userAddress.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$.user.userAddress.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$.user.userAddress.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$.user.userAddress.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$.user.userAddress.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.user.userAddress.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$.user.userAddress.country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/users/{id}","123456888",1)
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/{apikey}/users/{id}","123456789",10000)
        .contentType(MediaType.APPLICATION_JSON))
        .andExpect(status().isPaymentRequired());
    }
    @Test
    void testGetUsersAdmin() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();
        Date date = java.sql.Date.valueOf(LocalDate.parse("20201010", DateTimeFormatter.BASIC_ISO_DATE));

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        User testUser = new User("user1", "pass1", "email1" , "name1", "name2" , date, testUserAddress,"apikey" );

        BDDMockito.when(repository.findAll()).thenReturn(myList);

        List<Integer> apiKeys = new ArrayList<>();
        apiKeys.add(1);

        BDDMockito.when(repository2.findAdminByApiKey("123456789")).thenReturn(apiKeys);

        this.mockmvc.perform(get("/evcharge/api/{apikey}/admin/users/{username}","123456789","Kiara41487")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].user.id", is(testUser.getId())))
            .andExpect(jsonPath("$[0].user.username", is(testUser.getUsername())))
            .andExpect(jsonPath("$[0].user.password", is(testUser.getPassword())))
            .andExpect(jsonPath("$[0].user.emailAddr", is(testUser.getEmailAddr())))
            .andExpect(jsonPath("$[0].user.firstName", is(testUser.getFirstName())))
            .andExpect(jsonPath("$[0].user.lastName", is(testUser.getLastName())))
            .andExpect(jsonPath("$[0].user.apiKey", is(testUser.getapiKey())))
            .andExpect(jsonPath("$[0].user.userAddress.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$[0].user.userAddress.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$[0].user.userAddress.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$[0].user.userAddress.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$[0].user.userAddress.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$[0].user.userAddress.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$[0].user.userAddress.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$[0].user.userAddress.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$[0].user.userAddress.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$[0].user.userAddress.country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(get("/evcharge/api/{apikey}/admin/users/{username}","123456888")
            .contentType(MediaType.APPLICATION_JSON))
            .andExpect(status().isUnauthorized());
    }
    
}