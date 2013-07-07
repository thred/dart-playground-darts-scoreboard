import "Player.dart";
import "Team.dart";

abstract class Game<RULES_TYPE extends Rules> {
  
  final RULES_TYPE rules;
  final List<Player> players;
  final List<Team> teams;
  
}