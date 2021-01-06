package gr.ntua.ece.softeng35.backend.controllers;

class ChargingProcessNotFoundException extends RuntimeException {
    ChargingProcessNotFoundException(Integer id) {
        super("Could not find charging process with id " + id);
      }
}