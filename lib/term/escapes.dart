const String _esc = "\x1B";

enum CommonEscape {
  cursorInvisible("$_esc[?25l"),
  cursorVisible("$_esc[?25h"),
  resoreScreen("$_esc[?47l"),
  saveScreen("$_esc[?47h"),
  enableAlternateBuffer("$_esc[?1049h"),
  disableAlternateBuffer("$_esc[?1049l");

  const CommonEscape(this.key);
  final String key;
}

enum AnsiiEscape {
  cursorUp("$_esc#A"),
  cursorDown("$_esc#B"),
  cursorRight("$_esc#C"),
  cursorLeft("$_esc#D"),
  resetStyles("$_esc[0m"),
  boldMode("$_esc[1m"),
  resetBoldMode("$_esc[22m"),
  faintMode("$_esc[2m"),
  resetFaintMode("$_esc[22m)"),
  italicMode("$_esc[3m"),
  resetItalicMode("$_esc[23m"),
  underlineMode("$_esc[4m"),
  resetUnderlineMode("$_esc[24m"),
  blinkingMode("$_esc[5m"),
  resetBlinkingMode("$_esc[25m"),
  reverseMode("$_esc[7m"),
  resetReverseMode("$_esc[27m"),
  invisibleMode("$_esc[8m"),
  resetInvisibleMode("$_esc[28m"),
  strikethroughMode("$_esc[9m"),
  resetStrikethroughMode("$_esc[29m"),
  colorBlackFG("$_esc[1;30m"),
  colorBlackBG("$_esc[1;40m"),
  colorRedFG("$_esc[1;31m"),
  colorRedBG("$_esc[1;41m"),
  colorGreenFG("$_esc[1;32m"),
  colorGreenBG("$_esc[1;42m"),
  colorYellowFG("$_esc[1;33m"),
  colorYellowBG("$_esc[1;43m"),
  colorBlueFG("$_esc[1;34m"),
  colorBlueBG("$_esc[1;44m"),
  colorMagentaFG("$_esc[1;35m"),
  colorMagentaBG("$_esc[1;45m"),
  colorCyanFG("$_esc[1;36m"),
  colorCyanBG("$_esc[1;46m"),
  colorWhiteFG("$_esc[1;37m"),
  colorWhiteBG("$_esc[1;47m"),
  colorDefaultFG("$_esc[1;39m"),
  colorDefaultBG("$_esc[1;49m"),
  colorReset("$_esc[1;0m"),
  enableLineWrapping("$_esc[=7h"),
  disableLineWrapping("$_esc[=7l");

  const AnsiiEscape(this.key);

  final String key;
}
