import 'dart:math';

class NthPrime {
  int prime(int n) {
    int lastPrime = 0;

    outer:
    for (int i = 2; n > 0; i++) {
      for (int j = 2; j <= sqrt(i).floor(); j++) {
        if (i % j == 0) continue outer;
      }
      --n;
      lastPrime = i;
    }

    return lastPrime;
  }
}

void main() {
  var c = NthPrime();
  print(c.prime(6));
}
