import "dart:html";
import "dart:math";

import "package:web_ui/web_ui.dart";

import "../model/global.dart";
import "../model/person.dart";
import "../model/session.dart";
import "../model/store.dart";

class HighscoreComponent extends WebComponent {
  
  @observable
  List<Person> persons = toObservable(new List());
  
  @observable
  Person maximumPerson;
  
  HighscoreComponent() {
  }
  
  void inserted() {
    persons.clear();

    STORE.compute();
    STORE.persons.forEach((key, person) => persons.add(person));
    
    compute();
    sortByScore();
  }
  
  void compute() {
    maximumPerson = new Person("Max Headroom");
    
    for (Person current in persons) {
      maximumPerson.score = max(current.score, maximumPerson.score);
      maximumPerson.percentWins = max(current.percentWins, maximumPerson.percentWins);
      maximumPerson.averageShot = max(current.averageShot, maximumPerson.averageShot);
      maximumPerson.maxPerRound = max(current.maxPerRound, maximumPerson.maxPerRound);
    }
  }
  
  void detail(String personName) {
    SESSION.personDetailName = personName;
    SESSION.page = PERSON_DETAIL_PAGE;
  }
  
  String getScoreClass(Person person) {
    return (person.score >= maximumPerson.score) ? "highlight" : "";
  }
  
  String getPercentWinsClass(Person person) {
    return (person.percentWins >= maximumPerson.percentWins) ? "highlight" : "";
  }

  String getAverageShotClass(Person person) {
    return (person.averageShot >= maximumPerson.averageShot) ? "highlight" : "";
  }

  String getMaxPerRoundClass(Person person) {
    return (person.maxPerRound >= maximumPerson.maxPerRound) ? "highlight" : "";
  }

  void sortByPerson() {
    persons.sort((a, b) => a.name.compareTo(b.name));
  }
  
  void sortByScore() {
    persons.sort((a, b) => b.score.compareTo(a.score));
  }

  void sortByPercentWins() {
    persons.sort((a, b) => b.percentWins.compareTo(a.percentWins));
  }

  void sortByAverageShot() {
    persons.sort((a, b) => b.averageShot.compareTo(a.averageShot));
  }

  void sortByMaxPerRound() {
    persons.sort((a, b) => b.maxPerRound.compareTo(a.maxPerRound));
  }

}
