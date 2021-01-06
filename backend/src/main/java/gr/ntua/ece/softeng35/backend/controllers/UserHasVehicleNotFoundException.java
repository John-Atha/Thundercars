package gr.ntua.ece.softeng35.backend.controllers;

class UserHasVehicleNotFoundException extends RuntimeException {
  UserHasVehicleNotFoundException(Integer id) {
    super("Could not find user has vehicle " + id);
  }
}