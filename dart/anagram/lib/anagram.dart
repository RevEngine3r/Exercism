class Anagram {
  List<String> findAnagrams(String text, List<String> tList) {
    List<String> anaGrams = [];

    for (int i = 0; i < tList.length; i++) {
      if (tList[i].length == text.length) {
        for (int j = 0; j < text.length; j++) {
          if (!tList[i].contains(text[j])) {
            continue;
          }
        }
        anaGrams.add(tList[i]);
      }
    }

    return anaGrams;
  }
}
