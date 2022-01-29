import 'dart:math';

class Darts {
  int score(double i, double j) {
    double a = sqrt(i * i + j * j);

    if (a <= 1) return 10;
    if (a <= 5) return 5;
    if (a <= 10) return 1;
    return 0;
  }
}
