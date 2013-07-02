import 'dart:html';
import 'dart:math';

import 'package:web_ui/web_ui.dart';

import '../model/Person.dart';
import '../model/State.dart';

class HighscoreComponent extends WebComponent {
  
  @observable
  State state;
  
  HighscoreComponent() {
  }
  
  void inserted() {
    refresh();
  }
  
  void refresh() {
    state.computeStats();
    sortByScore();
  }
  
  void personDetail(Person person) {
    state.detailPerson = person;
    state.page = PERSON_DETAIL_PAGE;
  }
  
  String getScoreClass(Person person) {
    return (person.score >= state.maximumPerson.score) ? "maximum" : "";
  }
  
  String getPercentWinsClass(Person person) {
    return (person.percentWins >= state.maximumPerson.percentWins) ? "maximum" : "";
  }

  String getAverageShotClass(Person person) {
    return (person.averageShot >= state.maximumPerson.averageShot) ? "maximum" : "";
  }

  String getMaxPerRoundClass(Person person) {
    return (person.maxPerRound >= state.maximumPerson.maxPerRound) ? "maximum" : "";
  }

  void sortByPerson() {
    state.persons.sort((a, b) => a.name.compareTo(b.name));
  }
  
  void sortByScore() {
    state.persons.sort((a, b) => b.score.compareTo(a.score));
  }

  void sortByPercentWins() {
    state.persons.sort((a, b) => b.percentWins.compareTo(a.percentWins));
  }

  void sortByAverageShot() {
    state.persons.sort((a, b) => b.averageShot.compareTo(a.averageShot));
  }

  void sortByMaxPerRound() {
    state.persons.sort((a, b) => b.maxPerRound.compareTo(a.maxPerRound));
  }

}
