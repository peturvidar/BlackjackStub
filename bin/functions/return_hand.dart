void ReturnHand(List<int> hand, List<int> deck){

}


void returnHand(hand, deck){
  deck.addAll(hand);
  hand.clear();
}

void ReturnHands(playerHand, houseHand, deck){
  ReturnHand(playerHand, deck);
  ReturnHand(houseHand, deck);
}