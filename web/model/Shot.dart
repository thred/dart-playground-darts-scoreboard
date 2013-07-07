import 'package:web_ui/web_ui.dart';

class Shot {
  
  @observable
  int value;

  @observable
  int multiplier;
  
  Shot(int value, int mutiplier) {
    this.value = value;
    this.multiplier = multiplier;
  }
  
}