


import '../../bin/functions.dart';



int CheckWinner(List<int> playerHand, List<int> houseHand, int currentBankRoll, int currentBet) {
  int playerScore = CalculateScore(playerHand);
  int houseScore = CalculateScore(houseHand);
  String winner = null;
  if (playerScore > 21) {
    if (houseScore <= 21) {
      print("House won");
      winner = "house";
    } else if (houseScore > 21) {
//I think then it's a draw? I haven't played Blackjack and the rules I found online don't specifically cover what happens if both are over 21
      print("It's a draw");
      winner = "draw";
    }
  } else if (playerScore == 21) {
    if (houseScore < 21) {
      print("Player won");
      winner = "player";
    } else if (houseScore == 21) {
      print("It's a draw");
      winner = "draw";
    } else if (houseScore > 21) {
      print("Player won");
      winner = "player";
    }
  } else if (playerScore < 21) {
    if (houseScore > 21) {
      print("Player won");
      winner = "player";
    } else if (houseScore == 21) {
      print("House won");
      winner = "house";
    } else if (houseScore < 21) {
      if (playerScore > houseScore) {
        print("Player won");
        winner = "player";
      } else if (playerScore < houseScore) {
        print("House won");
        winner = "house";
      }else if (playerScore == houseScore) {
        print("It's a draw");
        winner = "draw";
      }
    }
  }
  if (winner == "player") {
    currentBankRoll += currentBet;
//Player's bet gets added to their bankroll if they win
    print("Player was paid ${currentBet}, player's bankroll is now ${currentBankRoll}.");
  } else if (winner == "house") {
    currentBankRoll -= currentBet;
//Player's bet goes to the house if they lose
    print("${currentBet} goes to house. Player's bankroll is now ${currentBankRoll}.");
  } else if (winner == "draw") {
//Again the rules I found were vague on draws, I imagine you just start again?
    print("It's a draw! Why not play again?");
  }
//This function is an int function, so I presume it should return the player's new bankroll?
  return currentBankRoll;
}