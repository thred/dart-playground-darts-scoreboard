import 'package:web_ui/web_ui.dart';

import 'RulesX01.dart';
import 'RulesCricket.dart';

final RULES = {
  "x01": new RulesX01(), // PAIN cannot use constant here
  "cricket": new RulesCricket() // PAIN cannot use constant here
};

abstract class Rules {
  
  @observable
  String get id;
  
  @observable
  String get name;
  
}