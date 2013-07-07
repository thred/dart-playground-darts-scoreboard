import 'package:web_ui/web_ui.dart';

import "Shot.dart";

class Volley {
  
  @observable
  final List<Shot> shots = toObservable(new List<Shot>());
  
  Volley() {
  }
  
  void add(Shot shot) {
    shots.add(shot);
  }
  
  @observable
  int get count => shots.length;
  
}