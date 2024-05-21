import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, paper or scissors? (Enter r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      final playerMoveString = playerMove == Move.rock
          ? 'rock'
          : playerMove == Move.paper
              ? 'paper'
              : 'scissors';
      print('Player move: $playerMoveString');
      print('AI move: ${aiMove.name}');
      if (playerMove == aiMove) {
        print("It's a draw");
      } else if (playerMove == Move.rock && aiMove == Move.scissors) {
        print("You win!");
      } else if (playerMove == Move.paper && aiMove == Move.rock) {
        print("You win!");
      } else if (playerMove == Move.scissors && aiMove == Move.paper) {
        print("You win!");
      } else {
        print("You lose!");
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
    ;
  }

// Game logic

// while true
//  Show prompt
//  Read user input from console
//  If input is a valid move ("r", "p", "s")
//    Choose the AI move at random
//    Compare the player move with the AI move
//    Show the result
//   else if input is "q"
//    Quit the program
//   else
//    Invalid input
}
