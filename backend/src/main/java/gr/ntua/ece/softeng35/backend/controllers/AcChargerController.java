package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.AcCharger;
import gr.ntua.ece.softeng35.backend.models.AcChargerRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;
import gr.ntua.ece.softeng35.backend.models.AdminRepository;
import gr.ntua.ece.softeng35.backend.models.StationOwnerRepository;

@RestController
public class AcChargerController {
  private final AcChargerRepository repository;
  private final UserRepository repository2;
  private final AdminRepository repository1;
  private final StationOwnerRepository repository3;

  AcChargerController(AcChargerRepository repository, UserRepository repository2, AdminRepository repository1, StationOwnerRepository repository3) {
    this.repository = repository;
    this.repository1 = repository1;
    this.repository2 = repository2;
    this.repository3 = repository3;
}

  /*
  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/acchargers")
  List<AcCharger> all(@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
            CliController2 validator = new CliController2(repository2, repository1, repository3);


    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  */

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/acchargersmod")
  AcCharger newAcCharger(@RequestBody AcCharger newAcCharger,@RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

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
  @PutMapping("/evcharge/api/acchargersmod/{id}")
  AcCharger replaceAcCharger(@RequestBody AcCharger newAccharger, @PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(acCharger -> {
        acCharger.setUsablePhases(newAccharger.getUsablePhases());
        acCharger.setMaxPower(newAccharger.getMaxPower());

        return repository.save(acCharger);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/acchargersmod/{id}")
  void deleteAcCharger(@PathVariable Integer id, @RequestHeader("X-OBSERVATORY-AUTH") String apikey) {
    CliController2 validator = new CliController2(repository2, repository1, repository3);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}
