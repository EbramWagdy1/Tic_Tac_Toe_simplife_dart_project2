import 'dart:io';
import 'fun.dart';

void main()
{
  //printBanner
  printBanner();

  //Add player name

  print("Please Enter your Player 1 name :");
  String p1name=stdin.readLineSync()!;

  print("Please Enter your Player 2 name :");
  String p2name=stdin.readLineSync()!;

  //chose play x or o
  print("Hi $p1name chose your character X or O :");
  String Choice= (stdin.readLineSync()! .toLowerCase());
  String p1char=(Choice=="x")? "x":"o" ;
  String p2char=(Choice=="x")? "o":"x" ;

  //initialize Default score
  int p1score=0 ,p2score=0;

  String currentPlayer = p1name;
  String currentChar = p1char;

  //initialize board as  a List
  List <String> board=List.filled(9, "");

  while(true)
  {
    // setup game and switch player
    print("Game Start".padLeft(20));
    print("$p1name:$p1char                     $p2name:$p2char");
    printBoard(board);
    movePlayer(board, currentPlayer, currentChar);
    if (currentPlayer == p1name) {
      currentPlayer = p2name;
      currentChar = p2char;
    } else {
      currentPlayer = p1name;
      currentChar = p1char;
    }

    // Check If Player is win or Draw or the game is still return null
    String? winner = checkWinner(board);
    if (winner != null) {

       printBoard(board);

      if (winner == "x" || winner == "o") {
        String winnerName = (winner == p1char) ? p1name : p2name;
        print("$winnerName WINS!🎉🎉");
        //check and add score
        if (winner == p1char) {
          p1score++;
        }
        else if (winner == p2char) {
          p2score++;
        }
      }
      else if (winner == "D") {
        print("It's a Draw!🤝🤝");
      }

      //print score
      print("Score => $p1name: $p1score | $p2name: $p2score");

      //ask if you want to play again or not
      print("Do you want to play again? (y/n): ");
      String again = stdin.readLineSync()!.toLowerCase();

      //check if want play again or not
      if (again != "y") {
        print("Thanks for playing 👋👋");
        break;
      }
      else{
        board = List.filled(9, "");
        currentPlayer = p1name;
        currentChar = p1char;
        continue;
      }



    }


  }
}





