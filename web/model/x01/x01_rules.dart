import "package:web_ui/web_ui.dart";

import "../rules.dart";

const String RULES_X01_ID = "x01";

class X01Rules extends Rules {
  
  @observable
  int target = 501;
  
  @observable
  bool doubleIn = true;
  
  @observable
  bool doubleOut = true;
  
  @observable
  bool trippleIn = false;
  
  @observable
  bool trippleOut = false;
  
  @observable
  bool pingPong = false;
  
  @observable
  bool allPlayersFinish = false;
  
  @observable
  int maxRounds = 21;
  
  X01Rules() {
  }
  
  String get id => RULES_X01_ID;
  
  String get name => (target != null) ? target.toString() : "X01";

  int get minimumPlayers => 2;
  
  int get maximumPlayers => 8;

  bool get teamable => true;

  @observable
  String get targetString => (target != null) ? target.toString() : "";
  
  @observable
  void set targetString(targetString) {
    target = (targetString != "") ? int.parse(targetString) : 1;
  }
  
  @observable
  String get maxRoundsString => maxRounds.toString();
  
  @observable
  void set maxRoundsString(maxRoundsString) {
    maxRounds = (targetString != "") ? int.parse(maxRoundsString) : 1;
  }
  
  void reset() {
    target = 501;
    doubleIn = true;
    doubleOut = true;
    trippleIn = false;
    trippleOut = false;
    pingPong = false;
    allPlayersFinish = false;
    maxRounds = 21;
  }
  
}