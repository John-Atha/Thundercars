package gr.ntua.ece.softeng35.backend.controllers;

class VehicleNotFoundException extends RuntimeException {
  VehicleNotFoundException(String id) {
    super("Could not find vehicle " + id);
  }
}
