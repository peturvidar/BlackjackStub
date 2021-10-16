




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