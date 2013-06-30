import 'package:web_ui/web_ui.dart';

import '../controller/Rules.dart';
import '../controller/RulesX01.dart';
import '../controller/RulesCricket.dart';
import '../model/State.dart';

class GameSelectionPage extends WebComponent {
  
  @observable
  State state;
  
  GameSelectionPage() {
  }
  
  void nextPage() {
    state.page = TITLE_PAGE;
  }
  
  void cancel() {
    state.page = TITLE_PAGE;
  }
}
