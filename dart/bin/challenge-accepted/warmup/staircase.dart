
void showStaircase(int height) {
  int numSymbols = 1;

  // Loop for the height of the staircase
  for (int i = 0; i < height; i++) {
    String current = '';
    
    // Loop for empty row cells
    for (int j = 0; j < (height - numSymbols); j++) {
      current += ' ';
    }

    // Loop for filled row cells
    for (int j = 0; j < numSymbols; j++) {
      current += '#';
    }

    // Increment number of symbols
    numSymbols++;

    // Print current row
    print(current);
  }
}


main() {
  int height = 50;
  showStaircase(height);
}