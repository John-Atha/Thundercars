package gr.ntua.ece.softeng35.backend.controllers;

class AddressNotFoundException extends RuntimeException {
  AddressNotFoundException(Integer id) {
    super("Could not find address " + id);
  }
}