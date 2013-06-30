import 'dart:html';
import 'dart:math';

import 'package:web_ui/web_ui.dart';

import '../model/Player.dart';

class HighscoreComponent extends WebComponent {
  
  @observable
  List<Player> players;
  
  Player maximum;
  
  HighscoreComponent() {
    players = toObservable(new List<Player>());
    
    players.add(new Player("ham"));
    players.add(new Player("xib"));
    players.add(new Player("xsz"));
    
    players[2].score = 350.33333;
    players[1].percentWins = 50;
    players[2].averageShot = 23.33333;
    players[0].maxPerRound = 180;
    
    refresh();
  }
  
  void refresh() {
    computeStats();
    sortByScore();
  }
  
  void computeStats() {
    maximum = new Player("maximum");
    
    for (Player current in players) {
      maximum.score = max(current.score, maximum.score);
      maximum.percentWins = max(current.percentWins, maximum.percentWins);
      maximum.averageShot = max(current.averageShot, maximum.averageShot);
      maximum.maxPerRound = max(current.maxPerRound, maximum.maxPerRound);
    }
  }
  
  String getScoreClass(Player player) {
    return (player.score >= maximum.score) ? "maximum" : "";
  }
  
  String getPercentWinsClass(Player player) {
    return (player.percentWins >= maximum.percentWins) ? "maximum" : "";
  }

  String getAverageShotClass(Player player) {
    return (player.averageShot >= maximum.averageShot) ? "maximum" : "";
  }

  String getMaxPerRoundClass(Player player) {
    return (player.maxPerRound >= maximum.maxPerRound) ? "maximum" : "";
  }

  void sortByPlayer() {
    players.sort((a, b) => a.name.compareTo(b.name));
  }
  
  void sortByScore() {
    players.sort((a, b) => b.score.compareTo(a.score));
  }

  void sortByPercentWins() {
    players.sort((a, b) => b.percentWins.compareTo(a.percentWins));
  }

  void sortByAverageShot() {
    players.sort((a, b) => b.averageShot.compareTo(a.averageShot));
  }

  void sortByMaxPerRound() {
    players.sort((a, b) => b.maxPerRound.compareTo(a.maxPerRound));
  }

}
