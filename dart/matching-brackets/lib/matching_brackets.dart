class MatchingBrackets {
  final openList = '([{'.codeUnits;
  final closeList = ')]}'.codeUnits;

  int getOpening(int closing) {
    return this.openList[this.closeList.indexOf(closing)];
  }

  bool isPaired(String text) {
    List<int> opensFound = [];
    for (var c in text.codeUnits) {
      if (openList.contains(c)) {
        opensFound.add(c);
      } else if (closeList.contains(c)) {
        if (opensFound.last == getOpening(c)) {
          opensFound.removeLast();
        } else {
          return false;
        }
      }
    }
    return opensFound.length == 0;
  }
}

void main() {
  var c = MatchingBrackets();
  print(c.openList);
  print(c.closeList);
  print(c.isPaired("{[)][]}"));
}
