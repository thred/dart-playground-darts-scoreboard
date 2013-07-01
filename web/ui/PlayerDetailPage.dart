import 'package:web_ui/web_ui.dart';

import '../model/Player.dart';
import '../model/State.dart';

class PlayerDetailPage extends WebComponent {
  
  @observable
  State state;
  
  PlayerDetailPage() {
  }
  
  @observable
  Player get player => state.detailPlayer;
  
  void back() {
    state.page = TITLE_PAGE;
  }
  
  void reset() {
    player.reset();
  }
  
  void delete() {
    
  }
  
}
