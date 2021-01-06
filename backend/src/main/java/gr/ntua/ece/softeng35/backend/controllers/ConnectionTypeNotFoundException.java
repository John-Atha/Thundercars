package gr.ntua.ece.softeng35.backend.controllers;

class ConnectionTypeNotFoundException extends RuntimeException {
    ConnectionTypeNotFoundException(Integer id) {
        super("Could not find Connection Type with id " + id);
      }
}
