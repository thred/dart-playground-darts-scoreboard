import "../scorable.dart";
import "../scoreboard.dart";
import "../score_row.dart";
import "../score.dart";

import "x01_score.dart";

class X01ScoreRow extends ScoreRow {
  
  X01ScoreRow(Scoreboard scoreboard, int row) : super(scoreboard, row);
  
  X01Score create(Scorable scorable) {
    return new X01Score(this, computeRemaining(scorable, row));
  }
  
  /**
   * Compules the initial remaining points for the specified row.
   * Uses the safe way, always count all scores if they are valid
   */
  int computeRemaining(Scorable scorable, int row) {
    int remaining = game.rules.target;
    
    for (int i = 0; i < row; i += 1) {
      X01Score score = scoreboard[i][scorable];
      
      if (score.valid) { 
        remaining -= score.points;
      }
    }
    
    return remaining;
  }
}
