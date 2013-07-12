import "dart:core";

import "package:web_ui/web_ui.dart";

import "scorable.dart";
import "../util/utils.dart";


class Person implements Scorable {
  
  @observable
  String name;
  
  @observable
  num score = 0;

  @observable
  int numberOfWins = 0;

  @observable
  int numberOfGames = 0;

  @observable
  num percentWins = 0;
  
  @observable
  num averageShot = 0;

  @observable
  int maxPerRound = 0;
  
  Person(String name) {
    this.name = name;
  }
  
  Person.fromMap(Map map)  {
    name = map["name"];
    score = map["score"];
    numberOfWins = map["numberOfWins"];
    numberOfGames = map["numberOfGames"];
    averageShot = map["averageShot"];
    maxPerRound = map["maxPerRound"];
    
    compute();
  }
  
  Map toMap() {
    Map map = new Map();
    
    map["name"] = name;
    map["score"] = score;
    map["numberOfWins"] = numberOfWins;
    map["numberOfGames"] = numberOfGames;
    map["averageShot"] = averageShot;
    map["maxPerRound"] = maxPerRound;
    
    return map;
  }
  
  void compute() {
    percentWins = (numberOfGames > 0) ? (numberOfWins / numberOfGames) * 100 : 0;  
  }
  
  void reset() {
    score = 0;
    numberOfWins = 0;
    numberOfGames = 0;
    percentWins = 0;
    averageShot = 0;
    maxPerRound = 0;
  }
  
}

