package gr.ntua.ece.softeng35.backend.controllers;

class StationOwnerNotFoundException extends RuntimeException {
  StationOwnerNotFoundException(Integer id) {
    super("Could not find station owner " + id);
  }
}