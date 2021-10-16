import '../lib/functions/functions.dart';
import 'package:BlackJack/lib.dart';
import 'dart:io';



List<int> DeckOfCards(){

  List<int> newDeckOfCards = [];

  for(int i = 1; i <= 13; i++){
    for(int j = 1; j <=4; j++){
      newDeckOfCards.add(j);
    }
  }
  return newDeckOfCards;
}

