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
  
  String get id {
    return RULES_CRICKET_ID;
  }
  
  String get name {
    return "Cricket";
  }
  
  @observable
  String get maxRoundsString {
    return maxRounds.toString();
  }
  
  @observable
  void set maxRoundsString(maxRoundsString) {
    maxRounds = int.parse(maxRoundsString);
  }

}