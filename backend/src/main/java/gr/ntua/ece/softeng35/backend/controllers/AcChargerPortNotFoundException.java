package gr.ntua.ece.softeng35.backend.controllers;

class AcChargerPortNotFoundException extends RuntimeException {
    AcChargerPortNotFoundException(Integer id) {
        super("Could not find Ac Charger Port with id " + id);
      }
}
