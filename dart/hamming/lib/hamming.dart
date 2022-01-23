class Hamming {
  int distance(String dna1, String dna2) {
    if (dna1.isEmpty ^ dna2.isEmpty) {
      throw ArgumentError('no strand must be empty',
          'an ArgumentError with the message "no strand must be empty"');
    }

    if (dna1.length != dna2.length) {
      throw ArgumentError('left and right strands must be of equal length',
          'an ArgumentError with the message "left and right strands must be of equal length"');
    }

    int sum = 0;
    for (int i = 0; i < dna1.length; i++) {
      if (dna1[i] != dna2[i]) ++sum;
    }

    return sum;
  }
}
