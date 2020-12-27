package gr.ntua.ece.softeng35.backend.controllers;

class CountryNotFoundException extends RuntimeException {
    CountryNotFoundException(Integer id) {
        super("Could not find user "+ id);
    }
}