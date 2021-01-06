package gr.ntua.ece.softeng35.backend.controllers;

class DcChargerPortNotFoundException extends RuntimeException {
    DcChargerPortNotFoundException(Integer id) {
        super("Could not find Dc Charger Port with id " + id);
      }
}