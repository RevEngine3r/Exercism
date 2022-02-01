import 'dart:io';

class Minesweeper {
  List<String> _annotedBoard = [];

  int checkRL(String row, int c, bool inclusive) {
    int count = 0;
    if (((c + 1) < row.length) && (row[c + 1] == "*")) ++count;
    if (((c - 1) >= 0) && (row[c - 1] == "*")) ++count;
    if (inclusive && (row[c] == "*")) ++count;
    return count;
  }

  int check8(List<String> board, int r, int c) {
    int count = checkRL(board[r], c, false);
    if ((r + 1) < board.length) count += checkRL(board[r + 1], c, true);
    if ((r - 1) >= 0) count += checkRL(board[r - 1], c, true);
    return count;
  }

  Minesweeper(List<String> board) {
    for (int r = 0; r < board.length; r++) {
      _annotedBoard.add("");
      for (int c = 0; c < board[r].length; c++) {
        if (board[r][c] == "*") {
          _annotedBoard[r] += "*";
          continue;
        }
        int count = check8(board, r, c);
        if (count > 0)
          _annotedBoard[r] += count.toString();
        else
          _annotedBoard[r] += " ";
      }
      print(_annotedBoard[r]);
    }
  }

  List<String> get annoted {
    return _annotedBoard;
  }
}

void main() {
  print(new Minesweeper([" *  * ", "  *   ", "    * ", "   * *", " *  * ", "      "]).annoted);
}
