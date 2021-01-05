package gr.ntua.ece.softeng35.backend.controllers;

class CurrentProviderNotFoundException extends RuntimeException {
  CurrentProviderNotFoundException(Integer id) {
    super("Could not find current provider " + id);
  }
}