
import 'dart:math';

List<int> generateList(int maxsize, maxvalue) {
  List<int> list = new List<int>();
  Random randgen = new Random();

  for (int i = 0; i < maxsize; i++) {
    int randvalue = randgen.nextInt(maxvalue);
    list.add(randvalue);
  }

  return list;
}


void findMinMaxSum(List<int> list) {
  // Initialize variables
  int ignoreIndex = 0;
  int tmpMax = 0;
  int tmpMin = 0;
  list.forEach((v) {
    tmpMin = tmpMin + v;
  });

  // Loop through elements in list
  for (int i = 0; i < list.length; i++) {
    int currentTotal = 0;
    for (int j = 0; j < list.length; j++) {
      if (j != ignoreIndex) {
        currentTotal = currentTotal + list[j];
      }
    }

    // Check if current total is larger than max
    if (currentTotal > tmpMax) {
      tmpMax = currentTotal;
    }

    // Check if current total is smaller than min
    if (currentTotal < tmpMin) {
      tmpMin = currentTotal;
    }

    // Increase the ignore index
    ignoreIndex++;
  }

  // Print results
  print('Max: $tmpMax | Min: $tmpMin');
}


main() {
  List<int> list = generateList(10, 15);
  print(list);
  findMinMaxSum(list);
}