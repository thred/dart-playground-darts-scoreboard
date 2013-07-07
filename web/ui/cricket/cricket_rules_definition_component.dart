import 'dart:html';

import 'package:web_ui/web_ui.dart';

import '../../model/rules.dart';
import '../../model/cricket/cricket_rules.dart';

class CricketRulesDefinitionComponent extends WebComponent {
  
  @observable
  CricketRules rules = RULES[RULES_CRICKET_ID];
  
  CricketRulesDefinitionComponent() {
  }
  
  void clearAll() {
    rules.targets.fillRange(0, 21, false);
  }
  
  void addRandom() {
    
  }
}
