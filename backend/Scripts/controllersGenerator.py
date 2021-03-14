Entity = "ChargingProcess"
L1 = [["id", "---"], 
     ["user", "----"],
     ["vehicle", "---"],
     ["charging_station", "---"],
     ["charging_spot", "---"],
     ["connection_time", "---"],
     ["disconnect_time", "---"],
     ["done_charging_team", "---"],
     ["timezone","---"],
     ["kwh_delivered","---"],
     ["cost","---"],
     ["payment_way","---"],
     ["rating","---"],
     ["charging_program","---"]]
#]

L2 = []
for i in L1:
    L2.append(i[0])

def Low(mystring):
    return mystring[0].lower() + mystring[1:]

def Up(mystring):
    return mystring.capitalize()

imports = '''
package gr.ntua.ece.softeng35.backend.controllers;

import java.util.*;

import org.springframework.web.bind.annotation.*;

import gr.ntua.ece.softeng35.backend.models.%s;
import gr.ntua.ece.softeng35.backend.models.%sRepository;
''' %(Up(Entity), Up(Entity))

intro = '''
@RestController
class %sController {
  private final %sRepository repository;

  %sController(%sRepository repository) {
    this.repository = repository;
  }
''' %(Up(Entity), Up(Entity), Up(Entity), Up(Entity))

getAll = '''
  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/%s")
  List<%s> all() {
    return repository.findAll();
  }
''' %(Low(Entity)+"es", Up(Entity))


post = '''
  @CrossOrigin(origins = "http://localhost:3000")
  @PostMapping("/%s")
  %s new%s(@RequestBody %s new%s) {
    return repository.save(new%s);
  }
''' %(Low(Entity)+"", Up(Entity), Up(Entity), Up(Entity), Up(Entity), Up(Entity))


getCertain= '''
  @CrossOrigin(origins = "http://localhost:3000")
  @GetMapping("/%s/{id}")
  %s one(@PathVariable Integer id) {
    return repository.findById(id)
      .orElseThrow(() -> new %sNotFoundException(id));
  }
''' %(Low(Entity)+"", Up(Entity), Up(Entity))


Body=""
for b in L2[1:]:
    temp=""
    temp = temp + Low(Entity) + ".set" + Up(b) + "(new" + Up(Entity) + ".get" + Up(b) + "());\n"
    Body = Body + temp


put = '''
  @CrossOrigin(origins = "http://localhost:3000")
  @PutMapping("/%s/{id}")
  %s replace%s(@RequestBody %s new%s, @PathVariable Integer id) {
    return repository.findById(id)
      .map(%s -> {
        %s
        return repository.save(%s);
      })
      .orElseThrow(() -> new %sNotFoundException(id));
  }
''' %(Low(Entity)+"", Up(Entity), Up(Entity), Up(Entity), Up(Entity), Low(Entity), Body, Low(Entity), Up(Entity))

delete = '''
  @CrossOrigin(origins = "http://localhost:3000")
  @DeleteMapping("/%s/{id}")
  void delete%s(@PathVariable Integer id) {
    repository.deleteById(id);
  }
}
''' %(Low(Entity)+"es", Up(Entity))

res = imports + intro + getAll + post + getCertain + put + delete

print(res)