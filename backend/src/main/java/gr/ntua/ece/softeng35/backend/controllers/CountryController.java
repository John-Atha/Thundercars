package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Country;
import gr.ntua.ece.softeng35.backend.models.CountryRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class CountryController {
    private final CountryRepository repository;
    private final UserRepository repository2;

    CountryController (CountryRepository repository, UserRepository repository2) {
        this.repository = repository;
        this.repository2 = repository2;
    }


    /* IMPORTANT FOR THE API: repository.findAll() has to be changed, 
       returns error because a country can belong to many addresses */

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/evcharge/api/{apikey}/countries")
    List<Country> all(@PathVariable String apikey) {
        CliController validator = new CliController(repository2);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        return repository.findAll();
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/{apikey}/countriesmod")
    Country newCountry(@RequestBody Country newCountry, @PathVariable String apikey) {
        CliController validator = new CliController(repository2);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        return repository.save(newCountry);
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/evcharge/api/{apikey}/countries/{id}")
    Country one(@PathVariable Integer id,@PathVariable String apikey) {
        CliController validator = new CliController(repository2);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        return repository.findById(id)
            .orElseThrow(() -> new NoDataFoundException());
    }
    
    @CrossOrigin(origins = "http://localhost:3000")
    @PutMapping("/evcharge/api/{apikey}/countriesmod/{id}")
    Country replaceCountry(@RequestBody Country newCountry, @PathVariable Integer id,@PathVariable String apikey) {
        CliController validator = new CliController(repository2);

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
    @DeleteMapping("/evcharge/api/{apikey}/countriesmod/{id}")
    void deleteCountry(@PathVariable Integer id, @PathVariable String apikey) {
        CliController validator = new CliController(repository2);

        if (!validator.validate(apikey)){
          throw new NotAuthorizedException();
        }
        repository.deleteById(id);
    }

}