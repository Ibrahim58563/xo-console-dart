import 'dart:io';

class XO {
  static bool isPlayer1 = true;
  static final String player1 = 'O';
  static final String player2 = 'X';

  static List<List<String>> board = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' '],
  ];

  static bool gameFinished() {
    final List<Set<int>> winningCases = [
      {0, 1, 2},
      {3, 4, 5},
      {6, 7, 8},
      {0, 3, 6},
      {1, 4, 7},
      {0, 4, 8},
      {2, 4, 6},
    ];
    for (final winCase in winningCases) {
      if (winCase.every((pos) => board[pos ~/ 3][pos % 3] == player1)) {
        print("Player 1 Win");
        return true;
      } else if (winCase.every((pos) => board[pos ~/ 3][pos % 3] == player2)) {
        print("Player 2 Win");
        return true;
      }
    }
    return false;
  }

  static void greeting() {
    print("******* Welcome to TICTACTOE Game! *******");
    print("\t\tT1 |T2 |T3");
    print("\t\t---+---+--");
    print("\t\tM1 |M2 |M3");
    print("\t\t---+---+--");
    print("\t\tB1 |B2 |B3");
    print("Do you wanna play? y/n >> ");
  }

  static void startingGame() {
    String gameQuestion = stdin.readLineSync()!;
    if (gameQuestion.toLowerCase() == 'n') {
      print("Exit");
      return;
    }
    print("Let's start the game!");
    print("Player1: O\tPlayer2: X");
    print("write a position!");
  }

  static void playing() {
    while (!gameFinished()) {
      print("player${isPlayer1 ? 1 : 2}>>>> ");
      String player1Position = stdin.readLineSync()!.toLowerCase();
      int endOfPosition = 0;
      int positionIndex = 0;

      switch (player1Position[0]) {
        case "t":
          endOfPosition = int.parse(player1Position.substring(1, 2)) - 1;
        case "m":
          endOfPosition = int.parse(player1Position.substring(1, 2)) + 2;
        case "b":
          endOfPosition = int.parse(player1Position.substring(1, 2)) + 5;
      }
      for (int i = 1; i <= 3; i++) {
        for (int j = 1; j <= 3; j++) {
          if (endOfPosition == positionIndex) {
            isPlayer1 = !isPlayer1;
            if (board[i - 1][j - 1] == ' ')
              board[i - 1][j - 1] = isPlayer1 ? "X" : "O";
            stdout.write(board[i - 1][j - 1]);
          } else {
            stdout.write(board[i - 1][j - 1]);
          }
          if (j != 3) stdout.write(" |");
          positionIndex++;
        }
        print("");
        print("---+---+---");
      }
      print(board);
    }
  }
}
