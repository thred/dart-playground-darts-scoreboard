import "package:web_ui/web_ui.dart";

import "../model/global.dart";
import "../model/rules.dart";
import "../model/session.dart";

class GameSelectionPage extends WebComponent {
  
  GameSelectionPage() {
  }
  
  void inserted() {
    SESSION.save();
  }

  void select(String rulesId) {
    SESSION.rulesId = rulesId;  
    SESSION.page = RULES_PAGE;
  }
  
  void cancel() {
    SESSION.page = TITLE_PAGE;
  }
  
}
