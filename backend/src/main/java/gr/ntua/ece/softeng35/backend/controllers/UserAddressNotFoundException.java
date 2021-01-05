package gr.ntua.ece.softeng35.backend.controllers;

class UserAddressNotFoundException extends RuntimeException {
  UserAddressNotFoundException(Integer id) {
    super("Could not find user address " + id);
  }
}