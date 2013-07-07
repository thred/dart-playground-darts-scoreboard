import "Person.dart";
import "Scorable.dart";
import "Team.dart";

class Player implements Scorable {
  
  Person person;
  Team team;
  
  Player(Person person, Team team) {
    this.person = person;
    this.team = team;
  }
  
}