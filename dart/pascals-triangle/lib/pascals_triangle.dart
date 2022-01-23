import 'dart:io';

class PascalsTriangle {
  List<List<int>> rows(int n) {
    List<List<int>> out = [
      [1]
    ];

    for (int i = 0; i < n - 1; i++) {
      int prev = 0;
      List<int> row = [];

      for (int j = 0; j < out.last.length; j++) {
        row.add(out.last[j] + prev);
        prev = out.last[j];
      }

      row.add(1);
      out.add(row);
    }

    return out;
  }
}

void main() {
  var pt = PascalsTriangle();
  var r = pt.rows(10);

  r.forEach((row) {
    row.forEach((n) {
      stdout.write("$n ");
    });
    stdout.write("\n");
  });
}
