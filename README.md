# 🎮 Tic Tac Toe (Dart Console Game)

A simple **two-player Tic Tac Toe** game built with Dart.  

---

## ✨ Features
- 👥 **Two-player support** (Player 1 vs Player 2)  
- ❌⭕ **Character selection** (`X` or `O`)  
- 🖥️ **Interactive ASCII board rendering**  
- ✅ **Input validation** (no invalid or duplicate moves)  
- 🏆 **Winner detection** (rows, columns, diagonals)  
- 🤝 **Draw detection** when the board is full  
- 📊 **Score tracking** across multiple rounds  
- 🔄 **Replay option** without restarting the game  

---

## 🚀 Getting Started

### 1️⃣ Install Dart
Make sure you have [Dart SDK](https://dart.dev/get-dart) installed.  

Check installation:
```bash
dart --version
```
2️⃣ Clone this repo
```bash
git clone https://github.com/EbramWagdy1/Tic_Tac_Toe_simplife_dart_project2.git
cd tic_tac_toe_dart
```

3️⃣ Run the game
```bash
dart run game.dart
```
---
## 📂 Project Structure

📂 tic_tac_toe_dart  
 ┣ 📜 game.dart   # Main game loop, player setup, scoring, replay  
 ┣ 📜 fun.dart    # Helper functions (printBoard, movePlayer, checkWinner)  
 ┗ 📜 README.md   # Project documentation

 ---

 ## 🎮 Example Gameplay  
 ```bash
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


```
## 🔮 Future Enhancements  
🤖 AI mode for single-player  

🎨 Colored CLI output (highlight X, O, and winners)  

💾 Save match history (wins, losses, draws)  

## 📜 License  
This project is open-source and free to use.


