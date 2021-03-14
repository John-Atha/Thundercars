package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Country;
import gr.ntua.ece.softeng35.backend.models.CountryRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;


@RestController
public class CountryController {
    private final CountryRepository repository;
    private final UserRepository repository2;
    private final AdminRepository repository1;
    private final StationOwnerRepository repository3;

    CountryController (CountryRepository repository, UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3) {
        this.repository = repository;
        this.repository1 = repository1;
        this.repository2 = repository2;
        this.repository3 = repository3;
    }


    /* IMPORTANT FOR THE API: repository.findAll() has to be changed, 
       returns error because a country can belong to many addresses */

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/evcharge/api/countries")
    List<Country> all(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
        CliController2 validator = new CliController2(repository2, repository1, repository3);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        return repository.findAll();
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/countriesmod")
    Country newCountry(@RequestBody Country newCountry, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
      CliController2 validator = new CliController2(repository2, repository1, repository3);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        return repository.save(newCountry);
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/evcharge/api/countries/{id}")
    Country one(@PathVariable Integer id,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
      CliController2 validator = new CliController2(repository2, repository1, repository3);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        return repository.findById(id)
            .orElseThrow(() -> new NoDataFoundException());
    }
    
    @CrossOrigin(origins = "http://localhost:3000")
    @PutMapping("/evcharge/api/countriesmod/{id}")
    Country replaceCountry(@RequestBody Country newCountry, @PathVariable Integer id,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
      CliController2 validator = new CliController2(repository2, repository1, repository3);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        return repository.findById(id)
            .map(country -> {
                country.setTitle(newCountry.getTitle());
                country.setISOCode(newCountry.getISOCode());
                country.setContinentCode(newCountry.getContinentCode());
                return repository.save(country);
            })
            .orElseThrow(() -> new BadRequestException());
    }   

    @CrossOrigin(origins = "http://localhost:3000")
    @DeleteMapping("/evcharge/api/countriesmod/{id}")
    void deleteCountry(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
      CliController2 validator = new CliController2(repository2, repository1, repository3);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        repository.deleteById(id);
    }

}