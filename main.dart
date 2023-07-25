import 'dart:io';

List<List<String>> board = [
  [' ', ' ', ' '],
  [' ', ' ', ' '],
  [' ', ' ', ' '],
];
bool gameFinished() {
  if (board[0][0] == "X" && board[0][1] == "X" && board[0][2] == "X") {
    print("Player 2 Wins");
    return true;
  } else if (board[1][0] == "X" && board[1][1] == "X" && board[1][2] == "X") {
    print("Player 2 Wins");
    return true;
  } else if (board[2][0] == "X" && board[2][1] == "X" && board[2][2] == "X") {
    print("Player 2 Wins");
    return true;
  } else if (board[0][0] == "X" && board[1][0] == "X" && board[2][0] == "X") {
    print("Player 2 Wins");
    return true;
  } else if (board[0][1] == "X" && board[1][1] == "X" && board[2][1] == "X") {
    print("Player 2 Wins");
    return true;
  } else if (board[0][2] == "X" && board[1][2] == "X" && board[2][2] == "X") {
    print("Player 2 Wins");
    return true;
  } else if (board[0][0] == "X" && board[1][1] == "X" && board[2][2] == "X") {
    print("Player 2 Wins");
    return true;
  } else if (board[2][0] == "X" && board[1][1] == "X" && board[0][2] == "X") {
    print("Player 2 Wins");
    return true;
  } else if (board[0][0] == "O" && board[0][1] == "O" && board[0][2] == "O") {
    print("Player 1 Wins");
    return true;
  } else if (board[1][0] == "O" && board[1][1] == "O" && board[1][2] == "O") {
    print("Player 1 Wins");
    return true;
  } else if (board[2][0] == "O" && board[2][1] == "O" && board[2][2] == "O") {
    print("Player 1 Wins");
    return true;
  } else if (board[0][0] == "O" && board[1][0] == "O" && board[2][0] == "O") {
    print("Player 1 Wins");
    return true;
  } else if (board[0][1] == "O" && board[1][1] == "O" && board[2][1] == "O") {
    print("Player 1 Wins");
    return true;
  } else if (board[0][2] == "O" && board[1][2] == "O" && board[2][2] == "O") {
    print("Player 1 Wins");
    return true;
  } else if (board[0][0] == "O" && board[1][1] == "O" && board[2][2] == "O") {
    print("Player 1 Wins");
    return true;
  } else if (board[0][2] == "O" && board[1][1] == "O" && board[2][1] == "O") {
    print("Player 1 Wins");
    return true;
  } else {
    return false;
  }
}

void main() {
  print("******* Welcome to TICTACTOE Game! *******");
  print("\t\tT1 |T2 |T3");
  print("\t\t---+---+--");
  print("\t\tM1 |M2 |M3");
  print("\t\t---+---+--");
  print("\t\tB1 |B2 |B3");
  print("Do you wanna play? y/n >> ");
  String gameQuestion = stdin.readLineSync()!;
  if (gameQuestion == 'n' || gameQuestion == 'N') {
    print("Exit");
    return;
  }
  ;
  print("Let's start the game!");
  print("Player1: O\tPlayer2: X");
  print("write a position!");
  bool isPlayer1 = true;

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









// void main() {
//   Cat kitty = Cat();
//   kitty.walk();
//   Snake sh = Snake();
//   sh.crawl();
// }

// abstract class Animal {
//   int numberOfLimbs = 4;
// }

// mixin MammalsMixin {
//   walk() {
//     print("Mammal Walking");
//   }
// }
// mixin ReptilesMixin {
//   crawl() {}
// }

// mixin PetMixin {
//   play() {
//     walk() {
//       print("Pet Walking");
//     }
//   }
// }

// class Cat extends Animal with MammalsMixin, PetMixin {}

// class Snake extends Animal with ReptilesMixin {}






// // class Lion extends Animal {
// //   void roar() {
// //     print('roar');
// //   }
// // }

// // class Dog extends Animal {
// //   bark() {
// //     print('barking');
// //   }
// // }

// // class Cat extends Animal {
// //   meaw() {
// //     print("meaw");
// //   }
// // }
