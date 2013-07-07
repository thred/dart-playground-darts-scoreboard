import "package:web_ui/web_ui.dart";

import "cricket/cricket_rules.dart";
import "x01/x01_rules.dart";

final RULES = {
  "x01": new X01Rules(), // PAIN cannot use constant here
  "cricket": new CricketRules() // PAIN cannot use constant here
};

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