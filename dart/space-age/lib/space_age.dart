import 'dart:math';

class SpaceAge {
  static int earthYearSec = 31557600;

  double roundDouble(double value, int places) {
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }

  double age({String planet = "", int seconds = 0}) {
    switch (planet) {
      case "Mercury":
        return roundDouble(seconds / (earthYearSec * 0.2408467), 2);
      case "Venus":
        return roundDouble(seconds / (earthYearSec * 0.61519726), 2);
      case "Earth":
        return roundDouble(seconds / (earthYearSec * 1.0), 2);
      case "Mars":
        return roundDouble(seconds / (earthYearSec * 1.8808158), 2);
      case "Jupiter":
        return roundDouble(seconds / (earthYearSec * 11.862615), 2);
      case "Saturn":
        return roundDouble(seconds / (earthYearSec * 29.447498), 2);
      case "Uranus":
        return roundDouble(seconds / (earthYearSec * 84.016846), 2);
      case "Neptune":
        return roundDouble(seconds / (earthYearSec * 164.79132), 2);
      default:
        return 0;
    }
  }
}
