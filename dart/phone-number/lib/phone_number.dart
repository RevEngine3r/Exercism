class PhoneNumber {
  final n0 = "0".codeUnits[0];
  final n9 = "9".codeUnits[0];
  final cA = "A".codeUnits[0];
  final cZ = "Z".codeUnits[0];

  String? clean(String number) {
    number = number.toUpperCase();
    String cleanedNumber = "";

    for (int i = 0; i < number.length; i++) {
      if (number[i].codeUnits[0] >= n0 && number[i].codeUnits[0] <= n9) {
        cleanedNumber += number[i];
      } else if (((number[i].codeUnits[0] >= cA) &&
          (number[i].codeUnits[0] <= cZ))) {
        throw FormatException("letters not permitted");
      } else if (["@", ":", "!"].contains(number[i])) {
        throw FormatException("punctuations not permitted");
      }
    }

    //print(cleanedNumber.length);

    if (cleanedNumber.length > 11) throw FormatException("more than 11 digits");

    if (cleanedNumber.length == 11) {
      if (cleanedNumber[0] == "1") {
        cleanedNumber =
            cleanedNumber.codeUnits.getRange(1, cleanedNumber.length).join();
      } else {
        throw FormatException("11 digits must start with 1");
      }
    }

    if (cleanedNumber[0] == "0")
      throw FormatException("area code cannot start with zero");

    if (cleanedNumber[0] == "1")
      throw FormatException("area code cannot start with one");

    if (cleanedNumber[3] == "0")
      throw FormatException("exchange code cannot start with zero");

    if (cleanedNumber[3] == "1")
      throw FormatException("exchange code cannot start with one");

    return cleanedNumber;
  }
}

void main() {
  var c = PhoneNumber();
  print(c.clean("(223) 456-7890"));
}
