import 'dart:io';

class BeerSong {
  List<String> song = File('README.md')
      .readAsStringSync()
      .split('```text')[1]
      .split('```')[0]
      .trim()
      .split('\n')
      .toList();

  List<String> recite(int line, int nextLines) {
    line = (99 - line) * 3;
    return song.getRange(line, line + 2).toList();
  }
}

void main() {
  var c = BeerSong();
  print(c.recite(0, 1));
}
