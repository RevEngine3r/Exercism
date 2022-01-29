class Allergies {
  List<String> alergyList = [
    'eggs',
    'peanuts',
    'shellfish',
    'strawberries',
    'tomatoes',
    'chocolate',
    'pollen',
    'cats'
  ];

  List<String> list(int n) {
    String bCode = n.toRadixString(2);
    List<String> out = [];

    for (int i = 0; i < bCode.length; i++) {
      if (bCode[i] == '1') out.add(alergyList[i]);
    }

    return out;
  }

  bool allergicTo(String s, int n) {
    return list(n).contains(s);
  }
}

void main() {
  print(1.toRadixString(2));
  print(2.toRadixString(2));
  print(4.toRadixString(2));
  print(8.toRadixString(2));
  print(16.toRadixString(2));
  print(32.toRadixString(2));
  print(64.toRadixString(2));
  print(128.toRadixString(2));
  print(4.toRadixString(2));
}
