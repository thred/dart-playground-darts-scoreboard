import 'package:web_ui/web_ui.dart';

class Person {
  
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
  
  void comuptePercentWins() {
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

