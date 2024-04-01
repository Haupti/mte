import 'dart:convert';
import 'dart:io';

import 'package:mte/mirror/display.dart';

class FileInteractor {
  String filename;
  File file;
  FileInteractor({required this.filename}) : file = File(filename);

  final AsciiDecoder _ascii = AsciiDecoder();

  void save(Display display) {
    String str = "";
    for (var row in display.rows) {
      str += _ascii.convert(row);
    }
    if (!file.existsSync()) {
      file.create();
    }

    file.writeAsStringSync(str);
  }
}

FileInteractor file = FileInteractor(filename: "mte_test.txt");
