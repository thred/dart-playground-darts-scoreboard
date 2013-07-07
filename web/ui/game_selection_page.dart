import "package:web_ui/web_ui.dart";

import "../model/rules.dart";
import "../model/x01/x01_rules.dart";
import "../model/cricket/cricket_rules.dart";
import "../model/state.dart";

class GameSelectionPage extends WebComponent {
  
  @observable
  State state;
  
  GameSelectionPage() {
  }
  
  void nextPage() {
    state.page = PLAYERS_PAGE;
  }
  
  void cancel() {
    state.page = TITLE_PAGE;
  }
  
  void reset() {
    state.rules.reset();
  }
}
