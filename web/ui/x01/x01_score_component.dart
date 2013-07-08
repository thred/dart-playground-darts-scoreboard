import "dart:html";

import "package:web_ui/web_ui.dart";

import "../../model/rules.dart";
import "../../model/x01/x01_rules.dart";

class X01ScoreComponent extends WebComponent {
  
  bool big = true;
  
  X01ScoreComponent() {
  }
  
  String get classes => (big) ? "score score-big" : "score";
  
}
