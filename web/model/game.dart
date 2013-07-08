import "player.dart";
import "rules.dart";
import "team.dart";

abstract class Game {
  
  final Rules rules;
  final List<Player> players;
  final List<Team> teams;
  
}