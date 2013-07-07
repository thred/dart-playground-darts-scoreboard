import "Game.dart";
import "ScoreRow.dart";

/**
 * Represents a score that was assigned to a Scorable (like a Person, Player or Team)
 */
abstract class Score {

  ScoreRow scoreRow;
  int points = 0;

  Score(ScoreRow scoreRow) {
    this.scoreRow = scoreRow;
  }
  
  Game get game => scoreRow.game;
  
  /**
   * Adds some points
   */
  void add(int points) {
    this.points += points;
  }
  
  /**
   * Returns true if the score is valid
   */
  bool get valid => true;
  
}