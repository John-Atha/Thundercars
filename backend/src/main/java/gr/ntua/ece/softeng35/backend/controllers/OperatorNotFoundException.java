package gr.ntua.ece.softeng35.backend.controllers;

class OperatorNotFoundException extends RuntimeException {
  OperatorNotFoundException(Integer id) {
    super("Could not find operator " + id);
  }
}