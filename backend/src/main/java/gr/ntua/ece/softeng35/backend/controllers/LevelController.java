package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Level;
import gr.ntua.ece.softeng35.backend.models.LevelRepository;

@RestController
class LevelController {
  private final LevelRepository repository;

  LevelController(LevelRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/levels")
  List<Level> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/levels")
  Level newLevel(@RequestBody Level newLevel) {
    return repository.save(newLevel);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/levels/{id}")
  Level one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new LevelNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/levels/{id}")
  Level replaceLevel(@RequestBody Level newLevel, @PathVariable Integer id) {
    return repository.findById(id)
      .map(level -> {
        level.setTitle(newLevel.getTitle());
        level.setComments(newLevel.getComments());
        level.setIs_fast_charge_capable(newLevel.getIs_fast_charge_capable());

        return repository.save(level);
      })
      .orElseThrow(() -> new LevelNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/levels/{id}")
  void deleteLevel(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
