
/********
 * OUTPUT EXAMPLE:
 * Apples and Oranges Challenge:
 * a = Apple tree location
 * s = Start location of house
 * e = End location of house
 * o = Orange tree location
 * 
 * Illustration of element positions:
 *       a       s         e          o
 * 
 * The positions of a, s, e, and o, are = [6, 14, 24, 35]
 * 
 * 
 * The person in the apple tree throws 8 apples with distance (and direction):
 * [9, -5, 3, -11, -4, -4, 10, 5]
 * The person in the orange tree throws 8 oranges with distance (and direction):
 * [1, 2, -2, -11, 8, 7, -12, 1]
 * Number of apples hitting the house: 2, and number of oranges hitting the house: 2.
 */

import 'dart:math';


// Function for generating the position of the trees and the house
List<int> generateChallenge(maxdistance) {
  int counter = 0;
  int previous = 0;
  String row = '';
  String content = 'aseo';
  
  List<int> positions = new List<int>();
  
  Random randgen = new Random();

  for (int i = 0; i < 4; i++) {
    previous = previous + randgen.nextInt(maxdistance) + 1;
    positions.add(previous);
  }

  for (int i = 0; i < positions.elementAt(3) + 5; i++) {
    if (positions.contains(i)) {
      row += content.substring(counter + 0, counter + 1);
      counter ++;
    } else {
      row += ' ';
    }
  }
  print(row);

  return positions;
}

// Function for generating the throws from the trees
Map generateThrows(throwcount, maxdistance) {
  Random randgen = new Random();
  var throws = new Map();

  for (int i = 0; i < 2; i++) {
    List<int> throwdistances = new List<int>();

    for (int j = 0; j < throwcount; j++) {
      int d = randgen.nextInt(maxdistance);
      if (randgen.nextBool()) {
        d = d * (-1);
      }
      throwdistances.add(d);
    }

    if (i == 0) {
      throws['apples'] = throwdistances;
    } else {
      throws['oranges'] = throwdistances;
    }
  }
  return throws;
}


// Function for finding the number of hits on the house from the trees
String numberOfHits(List<int> challenge, Map throws) {
  int numApples = 0;
  int numOranges = 0;

  throws.forEach((key, value) {
    int start = 0;

    if (key == 'apples') {
      start = challenge[0];
      value.forEach((v) {
        if (((start + v) >= challenge[1]) && ((start + v) <= challenge[2])) {
          numApples++;
        }
      });
    } else if (key == 'oranges') {
      start = challenge[3];
      value.forEach((v) {
        if (((start + v) >= challenge[1]) && ((start + v) <= challenge[2])) {
          numOranges++;
        }
      });
    }
  });

  return 'Number of apples hitting the house: $numApples, and number of oranges hitting the house: $numOranges.';

}


// Main function
main() {
  int distPos = 16;
  int distThrow = 14;
  int numThrows = 8;

  print('Apples and Oranges Challenge:\n' + 
        'a = Apple tree location\n' + 
        's = Start location of house\n' + 
        'e = End location of house\n' + 
        'o = Orange tree location\n\n' +
        'Illustration of element positions:');

  List<int> challenge = generateChallenge(distPos);
  print('\nThe positions of a, s, e, and o, are = $challenge\n\n');

  Map throws = generateThrows(numThrows, distThrow);
  print('The person in the apple tree throws $numThrows apples with distance (and direction):\n' +
        throws['apples'].toString());

  print('The person in the orange tree throws $numThrows oranges with distance (and direction):\n' +
        throws['oranges'].toString());
  
  print(numberOfHits(challenge, throws));
}