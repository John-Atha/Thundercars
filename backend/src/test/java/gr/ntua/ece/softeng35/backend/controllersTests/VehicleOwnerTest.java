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

@WebMvcTest(UserController.class)
class VehicleOwnerTest {

    @Autowired
    private MockMvc mockmvc;

    @Autowired
    WebApplicationContext wac;

    @MockBean
    private UserRepository repository2;

    @MockBean
    private StationOwnerRepository repository4;

    @MockBean
    private AdminRepository repository5;
    
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

        List<User> myList = Arrays.asList(testUser);
        BDDMockito.when(repository2.findAll()).thenReturn(myList);

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/users")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$[0].id", is(testUser.getId())))
            .andExpect(jsonPath("$[0].username", is(testUser.getUsername())))
            .andExpect(jsonPath("$[0].password", is(testUser.getPassword())))
            .andExpect(jsonPath("$[0].emailAddr", is(testUser.getEmailAddr())))
            .andExpect(jsonPath("$[0].firstName", is(testUser.getFirstName())))
            .andExpect(jsonPath("$[0].lastName", is(testUser.getLastName())))
            .andExpect(jsonPath("$[0].apiKey", is(testUser.getapiKey())))
            .andExpect(jsonPath("$[0].userAddress.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$[0].userAddress.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$[0].userAddress.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$[0].userAddress.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$[0].userAddress.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$[0].userAddress.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$[0].userAddress.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$[0].userAddress.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$[0].userAddress.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$[0].userAddress.country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(get("/evcharge/api/users","user1")
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }

    @Test
    void testGetOneUser() throws Exception { 

        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();
        Date date = java.sql.Date.valueOf(LocalDate.parse("20201010", DateTimeFormatter.BASIC_ISO_DATE));

        Country testCountry = new Country(1,"mytitle","myiso", "mycont");
        UserAddress testUserAddress = new UserAddress(1,"test_address_line", "testTown", "TestState", "TestPostcode",
                        "testPhone1", "testPhone2", testCountry);

        User testUser = new User("user1", "pass1", "email1" , "name1", "name2" , date, testUserAddress,"apikey" );



        BDDMockito.when(repository2.findById(1)).thenReturn(Optional.of(testUser));

        List<User> users = new ArrayList();
        List<Admin> admins = new ArrayList();
        List<StationOwner> stationOwners = new ArrayList();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(get("/evcharge/api/users/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk())
            .andExpect(jsonPath("$.id", is(testUser.getId())))
            .andExpect(jsonPath("$.username", is(testUser.getUsername())))
            .andExpect(jsonPath("$.password", is(testUser.getPassword())))
            .andExpect(jsonPath("$.emailAddr", is(testUser.getEmailAddr())))
            .andExpect(jsonPath("$.firstName", is(testUser.getFirstName())))
            .andExpect(jsonPath("$.lastName", is(testUser.getLastName())))
            .andExpect(jsonPath("$.apiKey", is(testUser.getapiKey())))
            .andExpect(jsonPath("$.userAddress.town", is(testUserAddress.getTown())))
            .andExpect(jsonPath("$.userAddress.stateOrProvince", is(testUserAddress.getStateOrProvince())))
            .andExpect(jsonPath("$.userAddress.postcode", is(testUserAddress.getPostcode())))
            .andExpect(jsonPath("$.userAddress.contactTelephone1", is(testUserAddress.getContactTelephone1())))
            .andExpect(jsonPath("$.userAddress.contactTelephone2", is(testUserAddress.getContactTelephone2())))
            .andExpect(jsonPath("$.userAddress.userAddressLine1", is(testUserAddress.getUserAddressLine1())))
            .andExpect(jsonPath("$.userAddress.country.id", is(testCountry.getId())))
            .andExpect(jsonPath("$.userAddress.country.title", is(testCountry.getTitle())))
            .andExpect(jsonPath("$.userAddress.country.isocode", is(testCountry.getISOCode())))
            .andExpect(jsonPath("$.userAddress.country.continentCode", is(testCountry.getContinentCode())));

        this.mockmvc.perform(get("/evcharge/api/users/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());

        this.mockmvc.perform(get("/evcharge/api/users/{id}",10000)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isPaymentRequired());
    }

    @Test 
    void testDeleteUser() throws Exception {
        MockitoAnnotations.initMocks(this);
        this.mockmvc = webAppContextSetup(this.wac).build();

        List<User> users = new ArrayList<User>();
        List<Admin> admins = new ArrayList<Admin>();
        List<StationOwner> stationOwners = new ArrayList<StationOwner>();
        BDDMockito.when(repository2.findByIdAndApiKey(1,"1")).thenReturn(users);
        BDDMockito.when(repository4.findByIdAndApiKey(1,"1")).thenReturn(stationOwners);
        BDDMockito.when(repository5.findByIdAndApiKey(1,"1")).thenReturn(admins);

        this.mockmvc.perform(delete("/evcharge/api/usersmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "wiefweifhbv2397f2vfu22837514899tyjiwbc"))
            .andExpect(status().isOk());

        this.mockmvc.perform(delete("/evcharge/api/usersmod/{id}",1)
            .contentType(MediaType.APPLICATION_JSON)
            .header("X-OBSERVATORY-AUTH", "1:1:1"))
            .andExpect(status().isUnauthorized());
    }
}