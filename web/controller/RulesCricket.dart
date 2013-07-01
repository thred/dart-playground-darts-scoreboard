import 'package:web_ui/web_ui.dart';

import 'Rules.dart';

const String RULES_CRICKET_ID = "cricket";

class RulesCricket extends Rules {

  @observable
  var targets = toObservable([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true, true, true]);
  
  @observable
  bool cutThroat = true;

  @observable
  bool crazy = false;
  
  @observable
  bool allPlayersFinish = false;

  @observable
  int maxRounds = 21;

  RulesCricket() {
  }
  
  String get id => RULES_CRICKET_ID;
  
  String get name => "Cricket";

  int get minimumPlayers => 2;
  
  int get maximumPlayers => 8;

  bool get teamable => true;
  
  @observable
  String get maxRoundsString => maxRounds.toString();
  
  @observable
  void set maxRoundsString(maxRoundsString) {
    maxRounds = (maxRoundsString != "") ? int.parse(maxRoundsString) : 1;
  }
  
  void reset() {
    targets = toObservable([true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true, true, true]);
    cutThroat = true;
    crazy = false;
    allPlayersFinish = false;
    maxRounds = 21;
  }

}