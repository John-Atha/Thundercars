package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.UserAddress;
import gr.ntua.ece.softeng35.backend.models.UserAddressRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class UserAddressController {
  private final UserAddressRepository repository;
  private final UserRepository repository2;

  UserAddressController(UserAddressRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/useraddresses")
  List<UserAddress> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/useraddressesmod")
  UserAddress newUserAddress(@RequestBody UserAddress newUserAddress,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newUserAddress);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/useraddresses/{id}")
  UserAddress one(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/useraddressesmod/{id}")
  UserAddress replaceUserAddress(@RequestBody UserAddress newUserAddress, @PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(userAddress -> {
        userAddress.setUserAddressLine1(newUserAddress.getUserAddressLine1());
        userAddress.setTown(newUserAddress.getTown());
        userAddress.setStateOrProvince(newUserAddress.getStateOrProvince());
        userAddress.setPostcode(newUserAddress.getPostcode());
        userAddress.setContactTelephone1(newUserAddress.getContactTelephone1());
        userAddress.setContactTelephone2(newUserAddress.getContactTelephone2());
        userAddress.setCountry(newUserAddress.getCountry());
        return repository.save(userAddress);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/useraddressesmod/{id}")
  void deleteUserAddress(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}