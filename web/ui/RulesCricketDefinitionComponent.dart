import 'dart:html';

import 'package:web_ui/web_ui.dart';

import '../controller/Rules.dart';
import '../controller/RulesCricket.dart';

class RulesCricketDefinitionComponent extends WebComponent {
  
  @observable
  RulesCricket rules = RULES[RULES_CRICKET_ID];
  
  RulesCricketDefinitionComponent() {
  }
  
  void clearAll() {
    print(rules.targets);
    rules.targets.fillRange(0, 21, false);
    print(rules.targets);
  }
  
  void addRandom() {
    
  }
}