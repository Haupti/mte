import 'dart:convert';
import 'dart:io';
import 'package:mte/mirror/cursor.dart';

final AsciiDecoder _ascii = AsciiDecoder();

class Display {
  final List<List<int>> _stdoutMirror = [[]];

  int get length => _stdoutMirror.length;
  void add(List<int> row) => _stdoutMirror.add(row);
  List<List<int>> get rows => _stdoutMirror;

  List<int> operator [](int index) => _stdoutMirror[index];

  int get lastRowIndex => _stdoutMirror.length - 1;

  void _write(int x, int y, int char) {
    if (display.length == y) {
      display.add([]);
    }
    if (display[y].length == x) {
      display[y].add(char);
      return;
    } else {
      display[y][x] = char;
    }
  }

  void write(Cursor cursor, int char) {
    _write(cursor.x, cursor.y, char);
    stdout.write(_ascii.convert([char]));
  }

  int? lastColIndex(int y) {
    if (_stdoutMirror.length - 1 >= y) {
      return _stdoutMirror[y].length - 1;
    }
    return null;
  }
}

Display display = Display();
