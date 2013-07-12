import "dart:core";
import "dart:html";
import "dart:json";

import "package:web_ui/web_ui.dart";

import "person.dart";

@observable
final Store STORE = new Store();

/**
 * Persistent storage
 */
class Store {

  @observable
  Map<String, Person> persons = toObservable(new Map());
  
  Store() {
  }

  Map toMap() {
    Map map = new Map();
    
    List personList = new List();
    persons.forEach((key, person) => personList.add(person.toMap()));
    map["persons"] = personList;
    
    return map;
  }

  void load() {
    String json = window.localStorage["store"];
    
    print("loaded: $json");
    
    if (json != null) {
      Map map = parse(json);
      
      persons.clear();
      
      List personList = map["persons"];
      personList.forEach((personMap) => persons[personMap["name"]] = new Person.fromMap(personMap));
    }
  }
  
  void save() {
    window.localStorage["store"] = stringify(toMap());
  }
  
  void compute() {
    persons.forEach((key, person) => person.compute());
  }
  
}