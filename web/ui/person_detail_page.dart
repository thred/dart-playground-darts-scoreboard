import "package:web_ui/web_ui.dart";

import "../model/person.dart";
import "../model/state.dart";

class PersonDetailPage extends WebComponent {
  
  @observable
  State state;
  
  PersonDetailPage() {
  }
  
  @observable
  Person get person => state.detailPerson;
  
  void back() {
    state.page = TITLE_PAGE;
  }
  
  void reset() {
    person.reset();
  }
  
  void delete() {
    
  }
  
}
