import 'dart:math';

class PrimeFactors {
  int _lastPrime = 0;

  int nextPrime() {
    if (_lastPrime < 1) _lastPrime = 1;
    outer:
    for (int i = _lastPrime + 1;; i++) {
      for (int j = 2; j <= sqrt(i).floor(); j++) {
        if ((i % j) <= 0) continue outer;
      }
      _lastPrime = i;
      return _lastPrime;
    }
  }

  List<int> factors(int n) {
    List<int> primeFactors = [];

    while (n > 1) {
      //print(_lastPrime);
      if (n % nextPrime() == 0) {
        primeFactors.add(_lastPrime);
        n = n ~/ _lastPrime;
        _lastPrime = 0;
      }
      //print(primeFactors);
      //print(n);
    }

    return primeFactors;
  }
}

void main() {
  var c = PrimeFactors();
  print(c.factors(93819012551));
}
