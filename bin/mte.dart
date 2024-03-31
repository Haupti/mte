import 'dart:convert';
import 'dart:io';

final AsciiDecoder ascii = AsciiDecoder();


void handleEvent(String char) {
  print("got: $char");
}

void onData(List<int> events) {
  print(events);
}

void main() {
  stdin.lineMode = false;
  stdin.echoMode = false;
  stdin.listen(onData);
}
