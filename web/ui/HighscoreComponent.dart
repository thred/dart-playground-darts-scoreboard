import 'dart:html';
import 'dart:math';

import 'package:web_ui/web_ui.dart';

import '../model/Player.dart';
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
  
  void playerDetail(Player player) {
    state.detailPlayer = player;
    state.page = PLAYER_DETAIL_PAGE;
  }
  
  String getScoreClass(Player player) {
    return (player.score >= state.maximumPlayer.score) ? "maximum" : "";
  }
  
  String getPercentWinsClass(Player player) {
    return (player.percentWins >= state.maximumPlayer.percentWins) ? "maximum" : "";
  }

  String getAverageShotClass(Player player) {
    return (player.averageShot >= state.maximumPlayer.averageShot) ? "maximum" : "";
  }

  String getMaxPerRoundClass(Player player) {
    return (player.maxPerRound >= state.maximumPlayer.maxPerRound) ? "maximum" : "";
  }

  void sortByPlayer() {
    state.registeredPlayers.sort((a, b) => a.name.compareTo(b.name));
  }
  
  void sortByScore() {
    state.registeredPlayers.sort((a, b) => b.score.compareTo(a.score));
  }

  void sortByPercentWins() {
    state.registeredPlayers.sort((a, b) => b.percentWins.compareTo(a.percentWins));
  }

  void sortByAverageShot() {
    state.registeredPlayers.sort((a, b) => b.averageShot.compareTo(a.averageShot));
  }

  void sortByMaxPerRound() {
    state.registeredPlayers.sort((a, b) => b.maxPerRound.compareTo(a.maxPerRound));
  }

}
