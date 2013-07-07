import "../scorable.dart";
import "../score_row.dart";
import "../score.dart";

import "x01_game.dart";

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

