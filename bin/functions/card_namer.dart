
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