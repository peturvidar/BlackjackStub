import 'dart:core';


void main(){
List<int> cards1 = [1,2,11];
List<int> cards2 = [8,2,11];

currentStatus(cards1, cards2);


}


List<int> currentStatus(List<int> playerHand, List<int> houseHand) {

  int playerScore = CalculateScore(playerHand);
  List<int> houseCards = houseHand;
  List<int> playerCards = playerHand;


  for(int x in playerCards) {
    if (x < playerCards.length){

    }

  }




  print('Player has $playerHand (total $playerScore points)');
  print('This is the house hand [${houseHand[2]}]');

  }


String CardNamer(int i){
  String cardName;
  if (i == 1) {
    cardName = "A";
  } else if (i == 11) {
    cardName = "J";
  } else if (i == 12) {
    cardName = "Q";
  } else if (i == 13) {
    cardName = "K";
  }
  else {
    cardName = i.toString();
  }
  return(cardName);
}


int CalculateScore(List<int> hand) {
  int score = 0;
  bool firstAce = true;
  for (int i = 0; i <= (hand.length - 1); i++)
    if (hand[i] < 11) {
      if (hand[i] > 1) {
        score += hand[i];
      } else {
        if (firstAce == true) {
          firstAce = false;
          print(firstAce);
          score += 11;
        } else {
          score += 1;
        }
      }
    }
    else {
      score += 10;
    }
  return score;
}

