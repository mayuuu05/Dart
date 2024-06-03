import 'dart:io';

void main() {
  TicTacToe ticTacToe = TicTacToe();
  ticTacToe.startGame();
}

class TicTacToe {
  bool turnO = true;
  List<String> showOX = ['','','','','','','','',''];
  String resultDeclaration = '';
  
  int playerO = 0;
  int playerX = 0;
  int boxFill = 0;
  bool winer = false;

  void startGame() {
    while (true) {
      printBoard();
      if (winer || boxFill == 9) {
        print(resultDeclaration);
        print('Scores: Player O - $playerO, Player X - $playerX');
        print('Do you want to play again? (yes/no)');
        String? answer = stdin.readLineSync();
        if (answer != null && answer.toLowerCase() == 'yes') {
          _clear();
        } else {
          break;
        }
      } else {
        int index = getUserInput();
        _click(index);
      }
    }
  }

 void printBoard() {
    print('${showOX[0]} | ${showOX[1]} | ${showOX[2]}');
    print('---------');
    print('${showOX[3]} | ${showOX[4]} | ${showOX[5]}');
    print('---------');
    print('${showOX[6]} | ${showOX[7]} | ${showOX[8]}');
  }

  int getUserInput() {
    while (true) {
      print('Player ${turnO ? 'O' : 'X'}, Enter your move between (1-9): ');
      String? input = stdin.readLineSync();
      if (input != null && int.tryParse(input) != null) {
        int index = int.parse(input) - 1;
        if (index >= 0 && index < 9 && showOX[index] == '') {
          return index;
        }
      }
      print('Invalid move. Try again.');
    }
  }

  void _click(int index) {
    if (turnO && showOX[index] == '') {
      showOX[index] = 'O';
      boxFill++;
    } else if (!turnO && showOX[index] == '') {
      showOX[index] = 'X';
      boxFill++;
    }
    turnO = !turnO;
    _checkWinner();
  }

  void _checkWinner() {
    List<List<int>> winMatchConditions = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];

    for (List<int> combo in winMatchConditions) {
      if (showOX[combo[0]] == showOX[combo[1]] &&
          showOX[combo[0]] == showOX[combo[2]] &&
          showOX[combo[0]] != '') {
        resultDeclaration = 'Player ${showOX[combo[0]]} Wins!';
       
        _updateScrore(showOX[combo[0]]);
        return;
      }
    }

    if (boxFill == 9 && !winer) {
      resultDeclaration = 'Nobody wins!';
    }
  }

  void _updateScrore(String winner) {
    if (winner == 'O') {
      playerO++;
    } else if (winner == 'X') {
      playerX++;
    }
    winer = true;
  }

  void _clear() {
    for (int i = 0; i < 9; i++) {
      showOX[i] = '';
    }
    resultDeclaration = '';
    
    boxFill = 0;
    winer = false;
  }
}
