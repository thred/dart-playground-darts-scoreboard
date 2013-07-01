import 'package:web_ui/web_ui.dart';

import '../model/Player.dart';
import '../model/State.dart';

class PlayersPage extends WebComponent {
  
  @observable
  State state;
  
  @observable
  String playerName = "";
  
  @observable
  List<Player> players = toObservable(new List());
  
  PlayersPage() {
  }
  
  @observable
  bool get playerNameValid {
    return playerName.length >= 3;  
  }
  
  void createPlayer() {
    if (!playerNameValid) {
      return;
    }
    
    Player player = new Player(playerName);
    
    state.registeredPlayers.add(player);
    players.add(player);
    playerName = "";
  }
  
  void addPlayer(Player player) {
    players.add(player);
  }
  
  void removePlayer(Player player) {
    players.remove(player);
  }
  
  void movePlayerUp(Player player) {
    int index = players.indexOf(player);
    
    if (index > 0) {
      players.remove(player);
      players.insert(index - 1, player);
    }
  }
  
  @observable
  bool isPlayerFirst(Player player) {
    return players.indexOf(player) <= 0;
  }
  
  @observable
  bool valid() {
    return (players.length >= state.rules.minimumPlayers) && (players.length <= state.rules.maximumPlayers);  
  }
  
  void nextPage() {
    if (valid()) {
      state.page = TITLE_PAGE;
    }
  }
  
  void cancel() {
    state.page = TITLE_PAGE;
  }
}
