package gr.ntua.ece.softeng35.backend.controllers;

class LevelNotFoundException extends RuntimeException {
    LevelNotFoundException(Integer id) {
        super("Could not find Level entry with id " + id);
      }
}
