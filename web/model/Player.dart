import "person.dart";
import "scorable.dart";
import "team.dart";

class Player implements Scorable {
  
  Person person;
  Team team;
  
  Player(Person person, Team team) {
    this.person = person;
    this.team = team;
  }
  
}