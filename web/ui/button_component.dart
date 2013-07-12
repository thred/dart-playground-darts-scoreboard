import "package:web_ui/web_ui.dart";

class ButtonComponent extends WebComponent {
  
  @observable
  String text;
  
  String additionalClass = "";
  
  bool _disabled = false;
  
  ButtonComponent() {
  }
  
  void inserted() {
    updateClassName();
  }
  
  bool get disabled {
    return _disabled;  
  }
  
  void set disabled(bool disabled) {
    _disabled = disabled;
    
    updateClassName();
  }
  
  void updateClassName() {
    String combinedClassName = "button ";
    
    if (additionalClass != "") {
      combinedClassName += additionalClass + " ";
    }
    
    if (disabled) {
      combinedClassName += "button-disabled";
    }
    
    getShadowRoot("button").attributes["class"] = combinedClassName;
  }
  
}
