



int DealCard(List<int> deck) {
  int myCard = deck[0];
  deck.removeAt(0);
  return myCard;
}