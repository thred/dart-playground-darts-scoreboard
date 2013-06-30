import 'package:web_ui/web_ui.dart';

class Button extends WebComponent {
  
  @observable
  String text;
  
  String additionalClass = "";
  
  Button() {
  }
  
  void inserted() {
    getShadowRoot("button").attributes["class"] = "button " + additionalClass;
  }
}
