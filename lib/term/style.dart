import 'package:mte/term/escapes.dart';

String bold(String str) {
  return "${AnsiiEscape.boldMode.key}$str${AnsiiEscape.resetBoldMode.key}";
}

String faint(String str) {
  return "${AnsiiEscape.faintMode.key}$str${AnsiiEscape.resetFaintMode.key}";
}

String italic(String str) {
  return "${AnsiiEscape.italicMode.key}$str${AnsiiEscape.resetItalicMode.key}";
}

String underline(String str) {
  return "${AnsiiEscape.underlineMode.key}$str${AnsiiEscape.resetUnderlineMode.key}";
}

String blinking(String str) {
  return "${AnsiiEscape.blinkingMode.key}$str${AnsiiEscape.resetBlinkingMode.key}";
}

String reverse(String str) {
  return "${AnsiiEscape.reverseMode.key}$str${AnsiiEscape.resetReverseMode.key}";
}

String invisible(String str) {
  return "${AnsiiEscape.invisibleMode.key}$str${AnsiiEscape.resetInvisibleMode.key}";
}

String strikethrough(String str) {
  return "${AnsiiEscape.strikethroughMode.key}$str${AnsiiEscape.resetStrikethroughMode.key}";
}
