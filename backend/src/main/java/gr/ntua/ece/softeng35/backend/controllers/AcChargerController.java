package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.AcCharger;
import gr.ntua.ece.softeng35.backend.models.AcChargerRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
@RestController
class AcChargerController {
  private final AcChargerRepository repository;
  private final UserRepository repository2;

  AcChargerController(AcChargerRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/admin/acchargers")
  List<AcCharger> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/admin/{apikey}/acchargersmod")
  AcCharger newAcCharger(@RequestBody AcCharger newAcCharger,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newAcCharger);
  }

  /*@CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/acchargers/{id}")
  AcCharger one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new AcChargerNotFoundException(id));
  }*/

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/admin/{apikey}/acchargersmod/{id}")
  AcCharger replaceAcCharger(@RequestBody AcCharger newAccharger, @PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(acCharger -> {
        acCharger.setUsablePhases(newAccharger.getUsablePhases());
        acCharger.setMaxPower(newAccharger.getMaxPower());

        return repository.save(acCharger);
      })
      .orElseThrow(() -> new AcChargerNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/admin/{apikey}/acchargersmod/{id}")
  void deleteAcCharger(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
