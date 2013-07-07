import "../scorable.dart";
import "../scoreboard.dart";

import "x01_game.dart";
import "x01_score_row.dart";

class X01Scoreboard extends Scoreboard {
  
  X01Scoreboard(X01Game game) : super(game);
  
  X01Game get game => super.game;
  
  X01ScoreRow create(Scorable scorable, int row) {
    return new X01ScoreRow(this, row);
  } 
  
}
