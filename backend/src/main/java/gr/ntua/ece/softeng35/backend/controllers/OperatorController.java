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
  @GetMapping("/evcharge/api/admin/operators")
  List<Operator> all() {
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/admin/operatorsmod")
  Operator newOperator(@RequestBody Operator newOperator) {
    return repository.save(newOperator);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/admin/operators/{id}")
  Operator one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new OperatorNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/admin/operatorsmod/{id}")
  Operator replaceOperator(@RequestBody Operator newOperator, @PathVariable Integer id) {
    return repository.findById(id)
      .map(operator -> {
        operator.setTitle(newOperator.getTitle());
        operator.setWebsiteUrl(newOperator.getWebsiteUrl());
        operator.setComments(newOperator.getComments());
        operator.setPrimaryPhone(newOperator.getPrimaryPhone());
        operator.setSecondaryPhone(newOperator.getSecondaryPhone());
        operator.setIsPrivateIndividual(newOperator.getIsPrivateIndividual());
        operator.setBookingUrl(newOperator.getBookingUrl());
        operator.setContactEmail(newOperator.getContactEmail());
        operator.setFaultReportEmail(newOperator.getFaultReportEmail());
        operator.setIsRestrictedEdit(newOperator.getIsRestrictedEdit());
        return repository.save(operator);
      })
      .orElseThrow(() -> new OperatorNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/evcharge/api/admin/operatorsmod/{id}")
  void deleteOperator(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}