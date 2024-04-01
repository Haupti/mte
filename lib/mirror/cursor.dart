import 'dart:io';

import 'package:mte/mirror/display.dart';
import 'package:mte/term/escapes.dart';

class Cursor {
  int x;
  int y;
  Cursor({required this.x, required this.y});

  void _sync() {
    stdout.write(AnsiiEscapeBuilder.cursorToPos(cursor.x + 1, cursor.y + 1));
  }

  void moveTo(int x, int y) {
    cursor.x = x;
    cursor.y = y;
    _sync();
  }

  void cursorUp() {
    if (y > 1) {
      y -= 1;
      _sync();
    }
  }

  void cursorDown(Display display) {
    if (display.lastRowIndex > y) {
      y += 1;
      _sync();
    }
  }

  void cursorLeft() {
    if (x > 1) {
      x -= 1;
      _sync();
    }
  }

  void cursorRight(Display display) {
    int? lastCol = display.lastColIndex(y);
    if (lastCol != null && lastCol > x) {
      x += 1;
      _sync();
    }
  }
}

Cursor cursor = Cursor(x: 0, y: 0);
