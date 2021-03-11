package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.Operator;
import gr.ntua.ece.softeng35.backend.models.OperatorRepository;
import gr.ntua.ece.softeng35.backend.models.UserRepository;

@RestController
class OperatorController {
  private final OperatorRepository repository;
  private final UserRepository repository2;

  OperatorController(OperatorRepository repository, UserRepository repository2) {
    this.repository = repository;
    this.repository2 = repository2;
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/operators")
  List<Operator> all(@PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findAll();
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/evcharge/api/{apikey}/operatorsmod")
  Operator newOperator(@RequestBody Operator newOperator, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.save(newOperator);
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/evcharge/api/{apikey}/operators/{id}")
  Operator one(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    return repository.findById(id)
      .orElseThrow(() -> new OperatorNotFoundException(id));
  }

  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/evcharge/api/{apikey}/operatorsmod/{id}")
  Operator replaceOperator(@RequestBody Operator newOperator, @PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
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
  @DeleteMapping("/evcharge/api/{apikey}/operatorsmod/{id}")
  void deleteOperator(@PathVariable Integer id, @PathVariable String apikey) {
    CliController validator = new CliController(repository2);

    if (!validator.validate(apikey)){
      throw new NotAuthorizedException();
    }
    repository.deleteById(id);
  }
}