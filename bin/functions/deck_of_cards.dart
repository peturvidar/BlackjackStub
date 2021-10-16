
List<int> DeckOfCards(){

  List<int> newDeckOfCards = [];

  for(int i = 1; i <= 13; i++){
    for(int j = 1; j <=4; j++) {
      newDeckOfCards.add(i);
    }
  }
  return newDeckOfCards;
}





