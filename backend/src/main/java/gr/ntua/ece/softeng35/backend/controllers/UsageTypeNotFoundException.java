package gr.ntua.ece.softeng35.backend.controllers;

class UsageTypeNotFoundException extends RuntimeException {
  UsageTypeNotFoundException(Integer id) {
    super("Could not find usage type " + id);
  }
}