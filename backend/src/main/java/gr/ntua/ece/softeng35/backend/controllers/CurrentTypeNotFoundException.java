package gr.ntua.ece.softeng35.backend.controllers;

class CurrentTypeNotFoundException extends RuntimeException {
    CurrentTypeNotFoundException(Integer id) {
        super("Could not find Current Type with id " + id);
      }
}
