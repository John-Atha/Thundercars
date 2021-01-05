package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Operator;
import gr.ntua.ece.softeng35.backend.models.OperatorRepository;

@RestController
class OperatorController {
  private final OperatorRepository repository;

  OperatorController(OperatorRepository repository) {
    this.repository = repository;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/operators")
  List<Operator> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/operators")
  Operator newOperator(@RequestBody Operator newOperator) {
    return repository.save(newOperator);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/operators/{id}")
  Operator one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new OperatorNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/operators/{id}")
  Operator replaceOperator(@RequestBody Operator newOperator, @PathVariable Integer id) {
    return repository.findById(id)
      .map(operator -> {
        operator.setTitle(newOperator.getTitle());
        operator.setWebsite_url(newOperator.getWebsite_url());
        operator.setComments(newOperator.getComments());
        operator.setPrimary_phone(newOperator.getPrimary_phone());
        operator.setSecondary_phone(newOperator.getSecondary_phone());
        operator.setIs_private_individual(newOperator.getIs_private_individual());
        operator.setBooking_url(newOperator.getBooking_url());
        operator.setContact_email(newOperator.getContact_email());
        operator.setFault_report_email(newOperator.getFault_report_email());
        operator.setIs_restricted_edit(newOperator.getIs_restricted_edit());
        return repository.save(operator);
      })
      .orElseThrow(() -> new OperatorNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/operators/{id}")
  void deleteOperator(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}