import 'package:web_ui/web_ui.dart';

import '../controller/Rules.dart';
import '../controller/RulesX01.dart';
import '../controller/RulesCricket.dart';

const int TITLE_PAGE = 0;
const int GAME_SELECTION_PAGE = 1;

class State {
  
  @observable
  int page = TITLE_PAGE;
  
  @observable
  Rules rules = RULES[RULES_X01_ID];

  @observable
  String get rulesId {
    return (rules != null) ? rules.id : null;
  }
  
  @observable
  void set rulesId(rulesId) {
    rules = RULES[rulesId];
  }
}