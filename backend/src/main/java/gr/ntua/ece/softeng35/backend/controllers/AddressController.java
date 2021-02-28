package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Address;
import gr.ntua.ece.softeng35.backend.models.AddressRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class AddressController {
  private final AddressRepository repository;
  private final UserRepository repository2;

  AddressController(AddressRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/admin/addresses")
  List<Address> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/admin/addressesmod")
  Address newAddress(@RequestBody Address newAddress, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newAddress);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/admin/addresses/{id}")
  Address one(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new AddressNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/admin/addressesmod/{id}")
  Address replaceAddress(@RequestBody Address newAddress, @PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

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
      .orElseThrow(() -> new AddressNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/admin/addressesmod/{id}")
  void deleteAddress(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}