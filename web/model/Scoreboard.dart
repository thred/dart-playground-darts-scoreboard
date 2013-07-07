import "game.dart";
import "scorable.dart";
import "score_row.dart";

/**
 * Usually a Scoreboard is based on rounds. Every round, each player gets a score.
 * In some games, like Cricket, the Scoreboard may represent hit counts.
 **/
abstract class Scoreboard {

  Game game;
  Map<int, ScoreRow> scoreRows;
  
  Scoreboard(Game game) {
    this.game = game;
  }
  
  ScoreRow create(Scorable scorable, int row);
  
  void add(Scorable scorable, int row, int points) {
    ScoreRow scoreRow = scoreRows[row];
    
    if (scoreRow == null) {
      scoreRows[row] = scoreRow = create(scorable, row); 
    }
    
    scoreRow.add(scorable, points);
  }
  
  ScoreRow operator [](int row) => scoreRows[row];
  
}