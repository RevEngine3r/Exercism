var regExp = RegExp(r'^\d\-\d{3}\-\d{5}\-[\dx]$', caseSensitive: false);

bool isValid(String isbn) {
  isbn = isbn.toLowerCase();
  if (regExp.stringMatch(isbn) == null) return false;

  int sum = 0;
  int mul = 10;

  for (int i = 0; i < isbn.length; i++) {
    switch (isbn[i]) {
      case '-':
        break;
      case 'x':
        sum += 10;
        break;
      default:
        sum += (int.parse(isbn[i]) * mul);
        --mul;
    }
  }

  return (sum % 11 == 0) ? true : false;
}
