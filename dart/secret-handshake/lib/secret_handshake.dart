class SecretHandshake {
  List<String> commands(int n) {
    List<String> out = [];
    String bCode = String.fromCharCodes(n.toRadixString(2).codeUnits.reversed);

    for (int i = 0; i < bCode.length; i++) {
      if (bCode[i] == '1')
        switch (i) {
          case 0:
            out.add("wink");
            break;
          case 1:
            out.add("double blink");
            break;
          case 2:
            out.add("close your eyes");
            break;
          case 3:
            out.add("jump");
            break;
          case 4:
            out = out.reversed.toList();
            break;
        }
    }
    return out;
  }
}

void main() {
  var c = SecretHandshake();
  c.commands(19);
}
