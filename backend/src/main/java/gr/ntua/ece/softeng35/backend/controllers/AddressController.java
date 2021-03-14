package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Address;
import gr.ntua.ece.softeng35.backend.models.AddressRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

@RestController
public class AddressController {
  private final AddressRepository repository;
  private final UserRepository repository2;
  private final AdminRepository repository1;
  private final StationOwnerRepository repository3;

  AddressController(AddressRepository repository, UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3) {
    this.repository = repository;
    this.repository1 = repository1;
    this.repository2 = repository2;
    this.repository3 = repository3;
}

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/addresses")
  List<Address> all(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/addressesmod")
  Address newAddress(@RequestBody Address newAddress, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newAddress);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/addresses/{id}")
  Address one(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/addressesmod/{id}")
  Address replaceAddress(@RequestBody Address newAddress, @PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(address -> {
        address.setTitle(newAddress.getTitle());
        address.setAddressLine1(newAddress.getAddressLine1());
        address.setAddressLine2(newAddress.getAddressLine2());
        address.setTown(newAddress.getTown());
        address.setStateOrProvince(newAddress.getStateOrProvince());
        address.setPostcode(newAddress.getPostcode());
        address.setLatitude(newAddress.getLatitude());
        address.setLongtitude(newAddress.getLongtitude());
        address.setContactTelephone1(newAddress.getContactTelephone1());
        address.setContactTelephone2(newAddress.getContactTelephone2());
        address.setContactEmail(newAddress.getContactEmail());
        address.setAccessComments(newAddress.getAccessComments());
        address.setRelatedurl(newAddress.getRelatedurl());
        address.setGeneralComments(newAddress.getGeneralComments());
        address.setCountry(newAddress.getCountry());
        return repository.save(address);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/addressesmod/{id}")
  void deleteAddress(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}