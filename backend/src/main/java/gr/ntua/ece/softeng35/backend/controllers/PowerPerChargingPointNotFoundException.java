package gr.ntua.ece.softeng35.backend.controllers;

class PowerPerChargingPointNotFoundException extends RuntimeException {
    PowerPerChargingPointNotFoundException(Integer id) {
        super("Could not find Power Per charging point entry with id " + id);
      }
}
