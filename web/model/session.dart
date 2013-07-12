import "dart:async";
import "dart:html";
import "dart:json";

import "package:web_ui/web_ui.dart";

import "global.dart";

@observable
final Session SESSION = new Session();

/**
 * Holds session base data (everything that should not get lost on a reload,
 * but should not persist for the next day)
 */
class Session {
  
  @observable
  String page = TITLE_PAGE;
  
  @observable
  String personDetailName = null;
  
  Session() {
  }
  
  Map toMap() {
    Map map = new Map();
    
    map["page"] = page;
    map["personDetailName"] = personDetailName;
    
    return map;
  }

  void load() {
    String json = window.sessionStorage["session"];
    
    if (json != null) {
      Map map = parse(json);
      
      page = map["page"];
      personDetailName = map["personDetailName"];
    }
  }
  
  void save() {
    window.sessionStorage["session"] = stringify(toMap());
  }  

}