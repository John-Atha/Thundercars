package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Country;
import gr.ntua.ece.softeng35.backend.models.CountryRepository;

@RestController
class CountryController {
    private final CountryRepository repository;

    CountryController (CountryRepository repository) {
        this.repository = repository;
    }


    /* IMPORTANT FOR THE API: repository.findAll() has to be changed, 
       returns error because a country can belong to many addresses */

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/evcharge/api/countries")
    List<Country> all() {
        return repository.findAll();
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @PostMapping("/evcharge/api/countries")
    Country newCountry(@RequestBody Country newCountry) {
        return repository.save(newCountry);
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/evcharge/api/countries/{id}")
    Country one(@PathVariable Integer id) {
        return repository.findById(id)
            .orElseThrow(() -> new CountryNotFoundException(id));
    }
    
    @CrossOrigin(origins = "http://localhost:3000")
    @PutMapping("/evcharge/api/countries/{id}")
    Country replaceCountry(@RequestBody Country newCountry, @PathVariable Integer id) {
        return repository.findById(id)
            .map(country -> {
                country.setTitle(newCountry.getTitle());
                country.setISOCode(newCountry.getISOCode());
                country.setContinentCode(newCountry.getContinentCode());
                return repository.save(country);
            })
            .orElseThrow(() -> new CountryNotFoundException(id));
    }   

    @CrossOrigin(origins = "http://localhost:3000")
    @DeleteMapping("/evcharge/api/countries/{id}")
    void deleteCountry(@PathVariable Integer id) {
        repository.deleteById(id);
    }

}