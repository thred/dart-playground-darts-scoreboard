import "package:web_ui/web_ui.dart";

import "player.dart";
import "volley.dart";

abstract class Round {
  
  @observable
  final Map<Player, Volley> volleys = toObservable(new Map<Player, Volley>());

  Round() {
  }
  
  void add(Player player, Volley volley) {
    volleys[player] = volley;
  }
  
}