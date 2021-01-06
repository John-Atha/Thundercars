package gr.ntua.ece.softeng35.backend.controllers;

class AcChargerNotFoundException extends RuntimeException {
    AcChargerNotFoundException(Integer id) {
        super("Could not find Ac Charger with id " + id);
      }
}
