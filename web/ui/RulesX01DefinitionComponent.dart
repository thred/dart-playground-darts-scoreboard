import 'dart:html';

import 'package:web_ui/web_ui.dart';

import '../controller/Rules.dart';
import '../controller/RulesX01.dart';

class RulesX01DefinitionComponent extends WebComponent {
  
  @observable
  RulesX01 rules = RULES[RULES_X01_ID];
  
  RulesX01DefinitionComponent() {
  }
  
}
