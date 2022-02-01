class Pangram {
  static const totalEngLetters = 26;
  static final cA = "A".codeUnits[0];
  static final cZ = "Z".codeUnits[0];

  bool isPangram(String text) {
    Set<int> usedChars = {};
    text = text.toUpperCase();
    for (int c in text.codeUnits) {
      if (c >= cA && c <= cZ) {
        usedChars.add(c);
      }
    }
    return usedChars.length == totalEngLetters;
  }
}
