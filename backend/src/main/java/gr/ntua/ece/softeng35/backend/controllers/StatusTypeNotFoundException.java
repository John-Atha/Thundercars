package gr.ntua.ece.softeng35.backend.controllers;

class StatusTypeNotFoundException extends RuntimeException {
  StatusTypeNotFoundException(Integer id) {
    super("Could not find status type " + id);
  }
}