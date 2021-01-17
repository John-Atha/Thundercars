package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Address;
import gr.ntua.ece.softeng35.backend.models.AddressRepository;

@RestController
class AddressController {
  private final AddressRepository repository;

  AddressController(AddressRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/addresses")
  List<Address> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/admin/addressesmod")
  Address newAddress(@RequestBody Address newAddress) {
    return repository.save(newAddress);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/addresses/{id}")
  Address one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new AddressNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/admin/addressesmod/{id}")
  Address replaceAddress(@RequestBody Address newAddress, @PathVariable Integer id) {
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
  @DeleteMapping("/evcharge/api/admin/addressesmod/{id}")
  void deleteAddress(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}