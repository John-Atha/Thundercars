package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.SubmissionStatus;
import gr.ntua.ece.softeng35.backend.models.SubmissionStatusRepository;

@RestController
class SubmissionStatusController {
  private final SubmissionStatusRepository repository;

  SubmissionStatusController(SubmissionStatusRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/submissionstatus")
  List<SubmissionStatus> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/submissionstatus")
  SubmissionStatus newSubmissionStatus(@RequestBody SubmissionStatus newSubmissionStatus) {
    return repository.save(newSubmissionStatus);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/submissionstatus/{id}")
  SubmissionStatus one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new SubmissionStatusNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/submissionstatus/{id}")
  SubmissionStatus replaceSubmissionStatus(@RequestBody SubmissionStatus newSubmissionStatus, @PathVariable Integer id) {
    return repository.findById(id)
      .map(submissionStatus -> {
        submissionStatus.setTitle(newSubmissionStatus.getTitle());
submissionStatus.setIsLive(newSubmissionStatus.getIsLive());

        return repository.save(submissionStatus);
      })
      .orElseThrow(() -> new SubmissionStatusNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/submissionstatus/{id}")
  void deleteSubmissionStatus(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}