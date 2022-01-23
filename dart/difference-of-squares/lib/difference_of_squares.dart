class DifferenceOfSquares {
  int differenceOfSquares(int n) {
    int sum = 0;
    int sum_sq = 0;
    for (; n > 0; n--) {
      sum += n;
      sum_sq += n * n;
    }
    return (sum * sum) - sum_sq;
  }

  int squareOfSum(int n) {
    int sum = 0;
    for (; n > 0; n--) {
      sum += n;
    }
    return sum * sum;
  }

  int sumOfSquares(int n) {
    int sum_sq = 0;
    for (; n > 0; n--) {
      sum_sq += n * n;
    }
    return sum_sq;
  }
}
