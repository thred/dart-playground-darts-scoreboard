import "dart:html";

import "package:web_ui/web_ui.dart";

import "model/global.dart";
import "model/session.dart";
import "model/store.dart";

void main() {
  SESSION.load();  
  STORE.load();
}
