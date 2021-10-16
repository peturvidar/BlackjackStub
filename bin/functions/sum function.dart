int CalculateScore(List<int> hand) {
  int score = 0;
  for (int i = 0; i <= (hand.length - 1); i++) {
    score += hand[i];
  }
  int numJacks = countThisCard(hand, 11);
  int numQueens = countThisCard(hand, 12);
  int numKings = countThisCard(hand, 13);
  int numAces = countThisCard(hand, 1);
  score = score - (numJacks 1) - (numQueens 2) - (numKings * 3);
  if (numAces > 0) {
    score += 10;
  }
  return score;
}

int countThisCard(List<int> hand, int card) {
  int count = 0;
  for (int i = 0; i < hand.length; i++) {
    if (hand[i] == card) {
      count = count + 1;
    }
  }
  return count;
}