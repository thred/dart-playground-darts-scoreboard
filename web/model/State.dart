import "dart:math";

import 'package:web_ui/web_ui.dart';

import 'Player.dart';

import '../controller/Rules.dart';
import '../controller/RulesX01.dart';
import '../controller/RulesCricket.dart';

const int TITLE_PAGE = 0;
const int GAME_SELECTION_PAGE = 1;
const int PLAYERS_PAGE = 2;

class State {
  
  @observable
  int page = TITLE_PAGE;
  
  @observable
  Rules rules = RULES[RULES_X01_ID];
  
  @observable
  List<Player> registeredPlayers = null;

  @observable
  Player maximumPlayer;
  

  State() {
    registeredPlayers = toObservable(new List<Player>());
    
    registeredPlayers.add(new Player("ham"));
    registeredPlayers.add(new Player("xib"));
    registeredPlayers.add(new Player("xsz"));
    
    registeredPlayers[2].score = 350.33333;
    registeredPlayers[1].percentWins = 50;
    registeredPlayers[2].averageShot = 23.33333;
    registeredPlayers[0].maxPerRound = 180;
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
    maximumPlayer = new Player("maximum");
    
    for (Player current in registeredPlayers) {
      maximumPlayer.score = max(current.score, maximumPlayer.score);
      maximumPlayer.percentWins = max(current.percentWins, maximumPlayer.percentWins);
      maximumPlayer.averageShot = max(current.averageShot, maximumPlayer.averageShot);
      maximumPlayer.maxPerRound = max(current.maxPerRound, maximumPlayer.maxPerRound);
    }
  }

}