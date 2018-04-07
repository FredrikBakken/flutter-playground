
void compareScore(var alice, var bob) {
  // Variables used
  int aliceWins = 0;
  int bobWins = 0;
  int shortestLength = 0;
  int longestLength = 0;
  int remainingLength = 0;
  bool aliceLongest = false;

  // Check who has the longest list
  if (alice.length > bob.length) {
    shortestLength = bob.length;
    longestLength = alice.length;
    aliceLongest = true;
  } else {
    shortestLength = alice.length;
    longestLength = bob.length;
  }

  // Compare scores
  for(int i = 0; i < shortestLength; i++) {
    if (alice[i] > bob[i]) {
      aliceWins += 1;
    } else if (bob[i] > alice[i]) {
      bobWins += 1;
    }
  }

  // Add remaining score elements to longest list
  remainingLength = longestLength - shortestLength;
  if (remainingLength > 0 && aliceLongest) {
    aliceWins += remainingLength;
  } else if (remainingLength > 0 && !aliceLongest) {
    bobWins += remainingLength;
  }

  // Print result
  print('Alice: $aliceWins || Bob: $bobWins');

}


main() {
  var alice = [30, 4, 6, 10, 12, 74, 2, 90, 16, 72];
  var bob = [15, 30, 2, 76, 122, 23, 2, 90, 8];

  compareScore(alice, bob);
}