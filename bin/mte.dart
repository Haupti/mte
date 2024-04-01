import 'dart:io';

import 'package:mte/file/file.dart';
import 'package:mte/mirror/cursor.dart';
import 'package:mte/mirror/display.dart';
import 'package:mte/term/color.dart';
import 'package:mte/term/escapes.dart';

void close() {
  stdout.write(AnsiiEscape.eraseScreen.key);
  exit(0);
}

void handleEvent(List<int> event) {
      print(Colored.red("default:$event"));
  switch (event) {
    case [19]: // ctrl + s
      file.save(display);
    case [24]: // ctrl + x
      close();
    case [72]: // arrow up
      cursor.cursorUp();
    case [75]: // arrow left
      cursor.cursorLeft();
    case [80]: // arrow down
      cursor.cursorDown(display);
    case [77]: // arrow right
      cursor.cursorRight(display);
    case [
        (>= 48 && <= 57) || (>= 65 && <= 90) || (>= 97 && <= 122) || == 92
      ]: // alphanumeric & space
      display.write(cursor, event[0]);
      cursor.moveTo(cursor.x + 1, cursor.y);
    case [13]: // newline
      display.write(cursor, event[0]);
      cursor.moveTo(0, cursor.y + 1);
    default:
      break;
  }
}

void onData(List<int> events) {
  handleEvent(events);
}

void main() {
  stdin.echoMode = false;
  stdin.lineMode = false;

  stdout.write(AnsiiEscapeBuilder.cursorToPos(0, 0));
  stdout.write(AnsiiEscape.eraseScreen.key);

  stdin.listen(onData);
}
