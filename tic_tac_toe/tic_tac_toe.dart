import 'dart:io';

void main() {
  for (int i = 1; i <= coordination.length; i++) {
    for (int j = 1; j <= coordination.length; j++) {
      if (winner == true) {
        break;
      } else {
        generateBoard();
        start();
        generateBoard();
      }
    }
  }
}

void generateBoard() {
  print(' |   |   |   |');
  print(' | ${coordination[0]} | ${coordination[1]} | ${coordination[2]} |');
  print('- - - - - - - -');
  print(' | ${coordination[3]} | ${coordination[4]} | ${coordination[5]} |');
  print('- - - - - - - -');
  print(' | ${coordination[6]} | ${coordination[7]} | ${coordination[8]} |');
  print(' |   |   |   |\n');
}

void winnerCheck() {
  for (int i = 1; i <= coordination.length; i++) {
    for (int j = 1; j <= coordination.length; j++) {
      if (coordination[i] == coordination[i + 1] && coordination[i + 1] == coordination[i + 2]) {
        winner = true;
        print(isXturn ? 'O won!' : 'X won!');
      }
    }
  }
}

void start() {
  stdout.write('Enter index');
  index = int.parse(stdin.readLineSync()!);

  if (isXturn) {
    coordination.removeAt(index! - 1);
    coordination.insert(index! - 1, 'X');
    isXturn = false;
  } else {
    coordination.removeAt(index! - 1);
    coordination.insert(index! - 1, 'O');
    isXturn = true;
  }
}

int? index;
List coordination = [1, 2, 3, 4, 5, 6, 7, 8, 9];
bool isXturn = true;
int? move;
bool? winner = false;
