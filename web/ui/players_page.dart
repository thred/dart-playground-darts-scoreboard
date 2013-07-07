import "package:web_ui/web_ui.dart";

import "../model/person.dart";
import "../model/state.dart";

class PlayersPage extends WebComponent {
  
  @observable
  State state;
  
  @observable
  String personName = "";
  
  @observable
  List<Person> players = toObservable(new List());
  
  PlayersPage() {
  }
  
  @observable
  bool get personNameValid {
    return personName.length >= 3;  
  }
  
  void createPerson() {
    if (!personNameValid) {
      return;
    }
    
    Person person = new Person(personName);
    
    state.persons.add(person);
    players.add(person);
    personName = "";
  }
  
  void addPerson(Person person) {
    players.add(person);
  }
  
  void removePerson(Person person) {
    players.remove(person);
  }
  
  void movePersonUp(Person person) {
    int index = players.indexOf(person);
    
    if (index > 0) {
      players.remove(person);
      players.insert(index - 1, person);
    }
  }
  
  @observable
  bool isPersonFirst(Person person) {
    return players.indexOf(person) <= 0;
  }
  
  @observable
  bool valid() {
    return (players.length >= state.rules.minimumPlayers) && (players.length <= state.rules.maximumPlayers);  
  }
  
  void nextPage() {
    if (valid()) {
      state.page = TITLE_PAGE;
    }
  }
  
  void cancel() {
    state.page = TITLE_PAGE;
  }
}
