package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.SubmissionStatus;
import gr.ntua.ece.softeng35.backend.models.SubmissionStatusRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
public class SubmissionStatusController {
  private final SubmissionStatusRepository repository;
  private final UserRepository repository2;

  SubmissionStatusController(SubmissionStatusRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/submissionstatus")
  List<SubmissionStatus> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/submissionstatusmod")
  SubmissionStatus newSubmissionStatus(@RequestBody SubmissionStatus newSubmissionStatus,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newSubmissionStatus);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/submissionstatus/{id}")
  SubmissionStatus one(@PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new NoDataFoundException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/submissionstatusmod/{id}")
  SubmissionStatus replaceSubmissionStatus(@RequestBody SubmissionStatus newSubmissionStatus, @PathVariable Integer id,@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .map(submissionStatus -> {
        submissionStatus.setTitle(newSubmissionStatus.getTitle());
submissionStatus.setIsLive(newSubmissionStatus.getIsLive());

        return repository.save(submissionStatus);
      })
      .orElseThrow(() -> new BadRequestException());
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/{apikey}/submissionstatusmod/{id}")
  void deleteSubmissionStatus(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}