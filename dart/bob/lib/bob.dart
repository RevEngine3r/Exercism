class Bob {
  static int upStart = "A".codeUnitAt(0);
  static int upEnd = "Z".codeUnitAt(0);
  static int lowStart = "a".codeUnitAt(0);
  static int lowEnd = "z".codeUnitAt(0);

  bool isAllBetween(String text, int start, int end) {
    for (int i = 0; i < text.length; i++) {
      if ((start <= text.codeUnitAt(i)) && (text.codeUnitAt(i) <= end)) {
        if (i >= text.length - 1) {
          return true;
        }
      } else {
        break;
      }
    }
    return false;
  }

  bool isAllUpper(String text) {
    return isAllBetween(text, upStart, upEnd);
  }

  bool isAllLower(String text) {
    return isAllBetween(text, lowStart, lowEnd);
  }

  bool isQuestion(String text) {
    return text.endsWith("?");
  }

  String response(String text) {
    text = text.trim();

    if (text.isEmpty) {
      return "Fine. Be that way!";
    }

    bool upper = isAllUpper(text);
    bool question = isQuestion(text);

    if (upper && question) {
      return "Calm down, I know what I'm doing!";
    }

    if (upper) {
      return "Whoa, chill out!";
    }

    if (question) {
      return "Sure.";
    }

    return "Whatever.";
  }
}

void main() {
  var b = Bob();
  print(b.isAllUpper("SaeED"));
}
