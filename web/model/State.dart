import "dart:math";

import 'package:web_ui/web_ui.dart';

import 'Person.dart';

import '../controller/Rules.dart';
import '../controller/RulesX01.dart';
import '../controller/RulesCricket.dart';

const int TITLE_PAGE = 0;
const int PERSON_DETAIL_PAGE = 1;
const int GAME_SELECTION_PAGE = 2;
const int PLAYERS_PAGE = 3;

class State {
  
  @observable
  int page = TITLE_PAGE;
  
  @observable
  Rules rules = RULES[RULES_X01_ID];
  
  @observable
  List<Person> persons = null;

  @observable
  Person maximumPerson;
  
  @observable
  Person detailPerson;
  
  State() {
    persons = toObservable(new List<Person>());
    
    persons.add(new Person("ham"));
    persons.add(new Person("xib"));
    persons.add(new Person("xsz"));
    
    persons[2].score = 350.33333;
    persons[1].percentWins = 50;
    persons[2].averageShot = 23.33333;
    persons[0].maxPerRound = 180;
  }
  
  @observable
  String get rulesId {
    return (rules != null) ? rules.id : null;
  }
  
  @observable
  void set rulesId(rulesId) {
    rules = RULES[rulesId];
  }
  
  void computeStats() {
    maximumPerson = new Person("maximum");
    
    for (Person current in persons) {
      maximumPerson.score = max(current.score, maximumPerson.score);
      maximumPerson.percentWins = max(current.percentWins, maximumPerson.percentWins);
      maximumPerson.averageShot = max(current.averageShot, maximumPerson.averageShot);
      maximumPerson.maxPerRound = max(current.maxPerRound, maximumPerson.maxPerRound);
    }
  }

}