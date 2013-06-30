import 'package:web_ui/web_ui.dart';

import '../model/State.dart';

class TitlePage extends WebComponent {
  
  @observable
  State state;
  
  TitlePage() {
  }
  
  void startGame() {
    state.page = GAME_SELECTION_PAGE;
  }
}
