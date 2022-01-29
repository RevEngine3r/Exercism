class Acronym {
  String abbreviate(String s) {
    String out = '';

    for (var e in s.split('-')) {
      out += e
          .trim()
          .split(' ')
          .map((e) => e.trim().replaceAll('_', '')[0])
          .join()
          .toUpperCase();
    }

    return out;
  }
}

void main() {
  var c = Acronym();
  c.abbreviate('sss _xxx - ss-dd - ss');
}
