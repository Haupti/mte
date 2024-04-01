import 'package:mte/term/escapes.dart';

class Colored {
  static String blue(String str) {
    return "${AnsiiEscape.colorBlueFG.key}$str${AnsiiEscape.colorDefaultFG.key}";
  }

  static String blueBg(String str) {
    return "${AnsiiEscape.colorBlueBG.key}$str${AnsiiEscape.colorDefaultBG.key}";
  }

  static String red(String str) {
    return "${AnsiiEscape.colorRedFG.key}$str${AnsiiEscape.colorDefaultFG.key}";
  }

  static String redBg(String str) {
    return "${AnsiiEscape.colorRedBG.key}$str${AnsiiEscape.colorDefaultBG.key}";
  }

  static String green(String str) {
    return "${AnsiiEscape.colorGreenFG.key}$str${AnsiiEscape.colorDefaultFG.key}";
  }

  static String greenBg(String str) {
    return "${AnsiiEscape.colorGreenBG.key}$str${AnsiiEscape.colorDefaultBG.key}";
  }
}
