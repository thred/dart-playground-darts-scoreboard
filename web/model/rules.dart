import "package:web_ui/web_ui.dart";

import "cricket/cricket_rules.dart";
import "x01/x01_rules.dart";

final RULES = {
  "x01": new X01Rules(), // PAIN cannot use constant here
  "cricket": new CricketRules() // PAIN cannot use constant here
};

final RULES_IDS = [RULES_X01_ID, RULES_CRICKET_ID];

abstract class Rules {
  
  @observable
  String get id;
  
  @observable
  String get name;
  
  int get minimumPlayers;
  
  int get maximumPlayers;
  
  bool get teamable;
  
  void reset();
  
}