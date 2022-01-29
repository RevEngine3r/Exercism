class ResistorColorDuo {
  Map<String, int> colorMap = {
    "black": 0,
    "brown": 1,
    "red": 2,
    "orange": 3,
    "yellow": 4,
    "green": 5,
    "blue": 6,
    "violet": 7,
    "grey": 8,
    "white": 9,
  };

  int value(List<String> list) {
    String out = colorMap[list[0]].toString();
    return int.parse(out + colorMap[list[1]].toString());
  }
}
