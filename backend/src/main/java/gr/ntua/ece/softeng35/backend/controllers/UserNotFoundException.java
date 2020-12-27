package gr.ntua.ece.softeng35.backend.controllers;

class UserNotFoundException extends RuntimeException {
  UserNotFoundException(Integer id) {
    super("Could not find user " + id);
  }
}