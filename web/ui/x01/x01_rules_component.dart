import "dart:html";

import "package:web_ui/web_ui.dart";

import "../../model/rules.dart";
import "../../model/x01/x01_rules.dart";

class X01RulesComponent extends WebComponent {
  
  @observable
  X01Rules rules = RULES[RULES_X01_ID];
  
  X01RulesComponent() {
  }
  
}
