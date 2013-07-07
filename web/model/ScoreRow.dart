import "Game.dart";
import "Scorable.dart";
import "Score.dart";
import "Scoreboard.dart";

/**
 * Usually a Scoreboard is based on rounds. Every round, each player gets a score.
 * All the scores of one round, is a ScoreRow.
 * But in some games, like Cricket, the Scoreboard may represent hit counts. Then, the
 * ScoreRow is one number.
 */
abstract class ScoreRow {

  Scoreboard scoreboard;
  int row;
  Map<Scorable, Score> scores = new Map<Scorable, Score>();

  ScoreRow(Scoreboard scoreboard, int row) {
    this.scoreboard = scoreboard;
    this.row = row;
  }
  
  Game get game => scoreboard.game;
  
  Score create(Scorable scorable);
  
  void add(Scorable scorable, int points) {
    Score score = scores[scorable];
    
    if (score == null) {
      scores[scorable] = score = create(scorable);
    }
    
    score.add(points);
  }
  
  Score operator [](Scorable scorable) {
    return scores[scorable];
  }
  
}