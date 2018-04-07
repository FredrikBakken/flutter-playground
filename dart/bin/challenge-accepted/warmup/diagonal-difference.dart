import 'dart:math';


List<List<int>> generateSquare(int maxsize, int maxvalue) {
  // Variable initialization
  int rc = 0;
  var randgen = new Random();
  List<List<int>> square = new List<List<int>>();

  // Generate random size of square
  while (rc == 0 || rc == 1) {
    rc = randgen.nextInt(maxsize);
  }

  // Generate contents of square
  for (int i = 0; i < rc; i++) {
    List<int> row = new List<int>();
    for (int j = 0; j < rc; j++) {
      row.add(randgen.nextInt(maxvalue));
    }
    square.add(row);
    row = null;
  }

  return square;
}


void findDifference(List<List<int>> square) {
  int lr = 0;   // Left -> Right diagonal sum
  int rl = 0;   // Right -> Left diagonal sum

  for (int i = 0; i < square.length; i++) {
    print(square[i]);

    int row_length = square[i].length - 1;
    
    lr += square[i][i];
    rl += square[i][row_length - i];
  }

  int diff = lr - rl;

  print('\nLeft->Right: $lr , Right->Left: $rl , Difference: $diff');

}


main() {
  // Randomly generate the question
  List<List<int>> square = generateSquare(10, 15);
  
  // Solve the task
  findDifference(square);
}