/***
 * Ask the user for a maximum number, use a loop to print each number on
 * the screen from 1 to the number they provided. At the half way point,
 * print out "half way there". Spit these tasks into functions.
 */

import 'dart:io';
import 'dart:math';


// Ask the user to provide a maximum number
int queryUser(String question) {
  stdout.write('${question}\r\n');
  return int.parse(stdin.readLineSync());
}


// Finds the half value
int findMiddle(int max) {
  return (max / 2).ceil();
}


// Iterate the values
void iterateMax(int middle, int max) {
  print('\nLooping through the numbers:');
  for (int i = 0; i <= max; i++) {
    if (i == middle) {
      print('${i} : Half-ways there!');
    } else {
      print('${i}');
    }
  }
}


// MAIN function
main() {
  int max = queryUser('Please provide a maximum number for the loop!');
  int middle = findMiddle(max);
  iterateMax(middle, max);
}
