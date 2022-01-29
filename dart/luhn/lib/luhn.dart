class Luhn {
  int n0 = '0'.codeUnitAt(0);
  int n9 = '9'.codeUnitAt(0);

  bool valid(String s) {
    s = s.trim().replaceAll(' ', '');
    int sum = 0;

    for (int i = 0; i < s.length; i++) {
      if (s.codeUnitAt(i) < n0 || s.codeUnitAt(i) > n9) return false;

      int n = int.parse(s[i]);

      if (i % 2 > 0) {
        n *= 2;
        if (n > 9) {
          n -= 9;
        }
      }

      sum += n;
    }

    return sum % 10 == 0;
  }
}
