import 'dart:io';


int placeBet(int bankRoll){
//User input is a string to be able to check if it's an integer
  String userNumEntered = null;
  while(true) {
    print("Please enter the amount of money you would like to bet this round:");
    userNumEntered = stdin.readLineSync();
    final number = int.tryParse(userNumEntered);
    if (userNumEntered == null || userNumEntered.isEmpty) {
      print("Please enter a number.");
    } else if (number == null) {
      print("Please enter a number.");
    } else {
      if (number > bankRoll) {
        print("That amount is higher than the current bank. Please enter a lower amount.");
      }
      else if (number == 0) {
        print("Amount cannot be 0. Please enter a higher amount.");
      } else {
        return number;
      }
    }
  }
}

int BuyIn() {
//User input is a string to be able to check if it's an integer
  String userBuyInEntered = null;
  while(true) {
    print("Please enter the amount you would like to buy in for:");
    userBuyInEntered = stdin.readLineSync();
    final number = int.tryParse(userBuyInEntered);
    if (userBuyInEntered == null || userBuyInEntered.isEmpty) {
      print("Please enter a number.");
    } else if (number == null) {
      print("Please enter a number.");
    } else {
      return number;
    }
  }
}