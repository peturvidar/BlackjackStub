import 'deal_card.dart';

void DrawCard(List<int> hand, List<int> deck) {
  int dealingCard = deck[0];
  deck.removeAt(0);
  hand.add(dealingCard);
}