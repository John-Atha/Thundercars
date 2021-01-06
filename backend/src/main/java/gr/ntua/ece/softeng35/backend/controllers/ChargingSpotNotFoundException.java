package gr.ntua.ece.softeng35.backend.controllers;

class ChargingSpotNotFoundException extends RuntimeException {
    ChargingSpotNotFoundException(Integer id) {
        super("Could not find Charging Spot with id " + id);
      }
}
