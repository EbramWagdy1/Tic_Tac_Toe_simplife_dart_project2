import 'dart:io';
void printBanner() {
  print("""
████████╗██╗ ██████╗     ████████╗ █████╗  ██████╗     ████████╗ ██████╗ ███████╗
╚══██╔══╝██║██╔═══██╗    ╚══██╔══╝██╔══██╗██╔═══██╗    ╚══██╔══╝██╔═══██╗██╔════╝
   ██║   ██║██║   ██║       ██║   ███████║██║   ██║       ██║   ██║   ██║█████╗  
   ██║   ██║██║   ██║       ██║   ██╔══██║██║   ██║       ██║   ██║   ██║██╔══╝  
   ██║   ██║╚██████╔╝       ██║   ██║  ██║╚██████╔╝       ██║   ╚██████╔╝███████╗
   ╚═╝   ╚═╝ ╚═════╝        ╚═╝   ╚═╝  ╚═╝ ╚═════╝        ╚═╝    ╚═════╝ ╚══════╝
""");
}
/// Function to print the game board in a formatted way
/// If the cell is empty, it shows the cell number
/// If the cell is not empty, it shows the player symbol (X or O)
void printBoard(List<String>board){

  // check if cell empty print num of cell if not print text
  String cell(int i)=>board[i].isEmpty ? "${i + 1}" : board[i];

  print("""
╔═════════╦═════════╦═════════╗
║   ${cell(0)}     ║    ${cell(1)}    ║    ${cell(2)}    ║
╠═════════╬═════════╬═════════╣
║   ${cell(3)}     ║    ${cell(4)}    ║    ${cell(5)}    ║
╠═════════╬═════════╬═════════╣
║   ${cell(6)}     ║    ${cell(7)}    ║    ${cell(8)}    ║
╚═════════╩═════════╩═════════╝
     """);
}



/// Function to handle a player's move
/// Asks the player to choose a position [1-9]
/// Validates the input (must be a number within the range)
/// Checks if the cell is free
/// Updates the board with the player's char
void movePlayer(List<String>board, String player , String char){
  while(true){
    print("$player($char) please chose position from [1-9] :");
    int? pos=int.tryParse(stdin.readLineSync()??"");
    if(pos==null || pos<1 || pos>9){
      print("Invalid Input Try again");
      continue;
    }
    else if(board[pos-1]!=''){
      print("Cell Already Taken");
      continue;
    }
    else{
      board[pos-1]=char;
      break;
    }
  }
}



/// Function to check the winner
/// Contains All possibilities to win
/// Returns "X" or "O" if a player wins
/// Returns "D" if the board is full with no winner (draw)
/// Returns null if the game is still work and not player is win
String? checkWinner(List<String>b){

  const win=[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];
  for(var w in win){
    String a= b[w[0]],c=b[w[1]],d=b[w[2]];
    if(a!="" && a==c && c==d){
      return a;
    }
  }
  if(!b.contains("")){
    return "D";
  }
  else{
    return null;
  }

}
