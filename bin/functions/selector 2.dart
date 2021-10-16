import 'dart:io';
import 'dart:math';
import 'dart:core';
import 'dart:convert';

import 'card_namer.dart';
void main(){

  List<String> choices = ["Dart", "Python", "C++", "Javascript"];

  optionSelect(choices);

}

List<String> optionSelect(List<String> options) {
  int counter = 0;

  print('Which of the following programming languages you prefer?');
  options.forEach((element) => print(element));
    }

  String userInput = stdin.readLineSync().toLowerCase();



/*

  for(int i = 0; i <= .length -1; i++) {
  while (true) {
    print('Which of the following programming languages you prefer?');
    print('''
    [1] ${options[0]}
    [2] ${options[1]}
    [3] ${options[2]}
    [4] ${options[3]}
    ''');
    int userInput = int.parse(stdin.readLineSync());

      if (userInput == 0) {
        print('You have selected ${options[0]}');
        break;
      } else if (userInput == 1) {
        print('You have selected ${options[1]}');
        break;
      } else if (userInput == 2) {
        print('You have selected ${options[2]}');
        break;
      } else if (userInput == 3) {
        print('You have selected ${options[3]}');
        break;
      }

  }
}
*/
