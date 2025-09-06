🎮 Tic Tac Toe (Dart Console Game)



A simple two-player Tic Tac Toe game built in Dart.
Runs in the terminal, supports score tracking, replay, and interactive board rendering.

✨ Features

👥 Two-player support (Player 1 vs Player 2)

❌⭕ Players choose their characters (X or O)

🖥️ Interactive board rendering with ASCII art

✅ Input validation (no invalid or duplicate moves)

🏆 Winner detection (rows, columns, diagonals)

🤝 Draw detection when the board is full

📊 Score tracking across multiple rounds

🔄 Replay option without restarting the game

🚀 Getting Started
Prerequisites

Install Dart SDK
 (v2.0 or higher)

Check installation:

dart --version

Installation

Clone this repository:

git clone https://github.com/your-username/tic-tac-toe-dart.git
cd tic-tac-toe-dart

Run the Game
dart run main.dart

📂 Project Structure
📂 tic_tac_toe
 ┣ 📜 main.dart   # Main entry point (game loop, scoring, replay)
 ┣ 📜 fun.dart    # Helper functions (printBoard, movePlayer, checkWinner)
 ┗ 📜 README.md   # Project documentation

🎮 Example Gameplay
████████╗██╗ ██████╗     ████████╗ █████╗  ██████╗     ████████╗ ██████╗ ███████╗
╚══██╔══╝██║██╔═══██╗    ╚══██╔══╝██╔══██╗██╔═══██╗    ╚══██╔══╝██╔═══██╗██╔════╝
   ██║   ██║██║   ██║       ██║   ███████║██║   ██║       ██║   ██║   ██║█████╗  
   ██║   ██║██║   ██║       ██║   ██╔══██║██║   ██║       ██║   ██║   ██║██╔══╝  
   ██║   ██║╚██████╔╝       ██║   ██║  ██║╚██████╔╝       ██║   ╚██████╔╝███████╗
   ╚═╝   ╚═╝ ╚═════╝        ╚═╝   ╚═╝  ╚═╝ ╚═════╝        ╚═╝    ╚═════╝ ╚══════╝

Please Enter your Player 1 name :
Alice
Please Enter your Player 2 name :
Bob
Hi Alice chose your character X or O :
x

       Game Start
Alice:x                     Bob:o

╔═════════╦═════════╦═════════╗
║   1     ║    2    ║    3    ║
╠═════════╬═════════╬═════════╣
║   4     ║    5    ║    6    ║
╠═════════╬═════════╬═════════╣
║   7     ║    8    ║    9    ║
╚═════════╩═════════╩═════════╝

Alice(x) please chose position from [1-9] :

🔮 Future Enhancements

🤖 AI mode for single-player

🎨 Colored CLI output (highlight X, O, and winners)

💾 Save match history (wins, losses, draws)

📜 License

This project is open-source and free to use.
