import "Game.dart";
import "Scorable.dart";
import "Score.dart";
import "Scoreboard.dart";
import "ScoreRow.dart";

class X01Game extends Game {

  
}

class X01Scoreboard extends Scoreboard {
  
  X01Scoreboard(X01Game game) : super(game);
  
  X01Game get game => super.game;
  
  X01ScoreRow create(Scorable scorable, int row) {
    return new X01ScoreRow(this, row);
  } 
  
}

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

/**
 * Holds the score. The points are the sum of the current shot. The sum is the total sum from the beginning of the game.
 * The remaining value is the remainig value since the start of the game
 */
class X01Score extends Score {
  
  int remaining;
  int sum = 0;
  
  X01Score(ScoreRow scoreRow, int remaining) : super(scoreRow) {
    this.remaining = remaining;  
  }
  
  X01Game get game => super.game;
  
  void add(int points) {
    super.add(points);
    
    remaining -= points;
    sum += points;
  }
  
  /**
   * Returns false if less then 0 points are remaining (special handling for 1 and 2 with double-, tripple- and masters-out)
   */
  bool get valid {
    if ((remaining == 1) && ((game.rules.doubleOut) || (game.rules.trippleOut))) {
      return false;
    }
    
    if ((remaining == 2) && (game.rules.trippleOut)) {
      return false;
    }
    
    return remaining >= 0;
  }
  
}

