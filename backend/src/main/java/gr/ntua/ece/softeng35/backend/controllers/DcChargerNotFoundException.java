package gr.ntua.ece.softeng35.backend.controllers;

class DcChargerNotFoundException extends RuntimeException {
    DcChargerNotFoundException(Integer id) {
        super("Could not find Dc Charger with id " + id);
      }
}

