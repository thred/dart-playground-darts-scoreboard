import 'package:web_ui/web_ui.dart';

import 'Rules.dart';

const String RULES_X01_ID = "x01";

class RulesX01 extends Rules {
  
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
  
  RulesX01() {
  }
  
  String get id {
    return RULES_X01_ID;
  }
  
  String get name {
    return "X01";
  }
  
  @observable
  String get targetString {
    return target.toString();
  }
  
  @observable
  void set targetString(targetString) {
    target = int.parse(targetString);
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