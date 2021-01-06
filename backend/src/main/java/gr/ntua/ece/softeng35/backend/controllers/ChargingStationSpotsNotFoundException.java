package gr.ntua.ece.softeng35.backend.controllers;

class ChargingStationSpotsNotFoundException extends RuntimeException {
    ChargingStationSpotsNotFoundException(Integer id) {
        super("Could not find Charging Station Spot with id " + id);
      }
}
