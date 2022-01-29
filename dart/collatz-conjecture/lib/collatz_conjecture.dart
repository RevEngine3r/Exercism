class CollatzConjecture {
  int steps(double n) {
    int i = 0;
    while (n > 1) {
      if (n % 2 == 0) {
        n /= 2;
      } else {
        n *= 3;
        ++n;
      }
      ++i;
    }

    return i;
  }
}
