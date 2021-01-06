package gr.ntua.ece.softeng35.backend.controllers;

class ChargingStationNotFoundException extends RuntimeException {
    ChargingStationNotFoundException(Integer id) {
        super("Could not find Charging Station with id " + id);
      }
}
