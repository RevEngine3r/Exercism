import 'dart:core';
import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int n) {
    var strN = n.toString();
    num sum = 0;
    for (int i = 0; i < strN.length; i++) {
      sum += pow(int.parse(strN[i]), strN.length);
    }
    if (sum == n) {
      return true;
    }
    return false;
  }
}
