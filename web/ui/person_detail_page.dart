import "package:web_ui/web_ui.dart";

import "../model/global.dart";
import "../model/person.dart";
import "../model/session.dart";
import "../model/store.dart";

class PersonDetailPage extends WebComponent {
  
  PersonDetailPage() {
  }
  
  @observable
  Person get person => STORE.persons[SESSION.personDetailName];
  
  void inserted() {
    SESSION.save();
  }

  void back() {
    SESSION.page = TITLE_PAGE;
  }
  
  void reset() {
    person.reset();
  }
  
  void delete() {
    
  }
  
}
