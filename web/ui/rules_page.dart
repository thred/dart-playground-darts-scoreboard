import "package:web_ui/web_ui.dart";

import "../model/global.dart";
import "../model/rules.dart";
import "../model/session.dart";

import "../model/x01/x01_rules.dart";

class RulesPage extends WebComponent {
  
  RulesPage() {
  }
  
  Rules get rules => RULES[SESSION.rulesId];
  
  void inserted() {
    SESSION.save();
  }
  
  void cancel() {
    SESSION.page = GAME_SELECTION_PAGE;
  }
}