import "package:web_ui/web_ui.dart";

import "../model/global.dart";
import "../model/session.dart";
import "../model/store.dart";

class TitlePage extends WebComponent {
  
  TitlePage() {
  }
  
  void inserted() {
    SESSION.save();
  }
  
  void startGame() {
    //state.page = GAME_SELECTION_PAGE;
  }
}
