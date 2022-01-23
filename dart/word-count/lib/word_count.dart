class WordCount {
  String removeAll(String text) {
    var rmList = ['\'', '\"', ":", ",", "!"];

    while (true) {
      if (rmList.contains(text[0])) {
        text = text.substring(1);
      } else if (rmList.contains(text[text.length - 1])) {
        text = text.substring(0, text.length - 1);
      } else {
        break;
      }
    }

    return text;
  }

  Map<String, int> countWords(String text) {
    Map<String, int> myMap = {};
    var sp = text.toLowerCase().split(RegExp(r'\s+|\n+|\t+'));

    for (int i = 0; i < sp.length; i++) {
      sp[i] = removeAll(sp[i]);

      if (myMap.containsKey(sp[i])) {
        myMap[sp[i]] = myMap[sp[i]]!.toInt() + 1;
      } else {
        myMap[sp[i]] = 1;
      }
    }

    return myMap;
  }
}

void main() {
  var text =
      "\"That's the password: 'PASSWORD 123'!\", cried the Special Agent.\nSo I fled.";

  var wc = WordCount();
  print(wc.countWords(text));
}
