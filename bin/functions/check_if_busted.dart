import 'dart:io';
import 'dart:core';


  bool checkIfBusted(List<int> hand){

  int sum = CalculateScore(hand);

    if(sum > 21){
      return true;
    }else{
      return false;
}
}

