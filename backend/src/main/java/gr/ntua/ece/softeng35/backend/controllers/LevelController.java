package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Level;
import gr.ntua.ece.softeng35.backend.models.LevelRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
public class LevelController {
  private final LevelRepository repository;
  private final UserRepository repository2;

  LevelController(LevelRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/levels")
  List<Level> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/levelsmod")
  Level newLevel(@RequestBody Level newLevel, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newLevel);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/levels/{id}")
  Level one(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/levelsmod/{id}")
  Level replaceLevel(@RequestBody Level newLevel, @PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(level -> {
        level.setTitle(newLevel.getTitle());
        level.setComments(newLevel.getComments());
        level.setIsFastChargeCapable(newLevel.getIsFastChargeCapable());

        return repository.save(level);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/levelsmod/{id}")
  void deleteLevel(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
