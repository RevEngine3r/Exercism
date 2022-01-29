class Isogram {
  bool isIsogram(String s) {
    String tmp = "";

    for (int i = 0; i < s.length; i++) {
      if (tmp.contains(s[i])) {
        return false;
      }
      tmp += s[i];
    }

    return true;
  }
}
