class Triangle {
  bool isValidTriangle(double a, double b, double c) {
    if ((a + b < c) || (a + c < b) || (b + c < a)) {
      return false;
    }
    return true;
  }

  bool equilateral(double a, double b, double c) {
    return isValidTriangle(a, b, c) && (a == b) && (b == c);
  }

  bool isosceles(double a, double b, double c) {
    return isValidTriangle(a, b, c) && (a == b || a == c || b == c);
  }

  bool scalene(double a, double b, double c) {
    return isValidTriangle(a, b, c) && (a != b) && (a != c) && (b != c);
  }
}
