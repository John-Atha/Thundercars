package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.UserAddress;
import gr.ntua.ece.softeng35.backend.models.UserAddressRepository;

@RestController
class UserAddressController {
  private final UserAddressRepository repository;

  UserAddressController(UserAddressRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/useraddresses")
  List<UserAddress> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/useraddresses")
  UserAddress newUserAddress(@RequestBody UserAddress newUserAddress) {
    return repository.save(newUserAddress);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/useraddresses/{id}")
  UserAddress one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new UserAddressNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/useraddresses/{id}")
  UserAddress replaceUserAddress(@RequestBody UserAddress newUserAddress, @PathVariable Integer id) {
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
      .orElseThrow(() -> new UserAddressNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/useraddresses/{id}")
  void deleteUserAddress(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}