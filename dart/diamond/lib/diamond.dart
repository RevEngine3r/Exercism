class Diamond {
  final List<String> chars = [
    for (int i = "A".codeUnits[0]; i <= "Z".codeUnits[0]; i++)
      String.fromCharCode(i)
  ];

  List<String> rows(String c) {
    c = c.toUpperCase();
    List<List<String>> diamond = [];
    int n = this.chars.indexOf(c) + 1;
    var emptyRow = [for (int i = 0; i < n; i++) ' '];
    for (int i = 0; i < n; i++) {
      diamond.insert(i, [...emptyRow]);
      diamond[i][i] = this.chars[i];
      diamond[i].insertAll(0, diamond[i].getRange(1, n).toList().reversed);
      if (i < n - 1) diamond.insert(diamond.length - i - 1, diamond[i]);
    }
    return [for (var r in diamond) r.join()];
  }
}

void main() {
  var c = Diamond();
  for (var r in c.rows("z")) print(r);
}
