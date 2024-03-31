import 'package:mte/term/escapes.dart';

String blue(String str) {
  return "${AnsiiEscape.colorBlueFG}$str${AnsiiEscape.colorDefaultFG}";
}

String blueBg(String str) {
  return "${AnsiiEscape.colorBlueBG}$str${AnsiiEscape.colorDefaultBG}";
}

String red(String str) {
  return "${AnsiiEscape.colorRedFG}$str${AnsiiEscape.colorDefaultFG}";
}

String redBg(String str) {
  return "${AnsiiEscape.colorRedBG}$str${AnsiiEscape.colorDefaultBG}";
}

String green(String str) {
  return "${AnsiiEscape.colorGreenFG}$str${AnsiiEscape.colorDefaultFG}";
}

String greenBg(String str) {
  return "${AnsiiEscape.colorGreenBG}$str${AnsiiEscape.colorDefaultBG}";
}
