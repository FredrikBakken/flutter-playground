
import 'dart:math';


List<int> generateList(maxsize, maxvalue) {
  List<int> list = new List<int>();
  Random randgen = new Random();

  for (int i = 0; i < maxsize; i++) {
    int randvalue = randgen.nextInt(maxvalue);
    bool evaluate = randgen.nextBool();
    if (evaluate) {
      randvalue = randvalue * (-1);
    }
    list.add(randvalue);
  }
  return list;
}


void calculate(List<int> list) {
  int listLength = list.length;
  int totPos  = 0;
  int totNeg  = 0;
  int totZero = 0;
  double resPos  = 0.0;
  double resNeg  = 0.0;
  double resZero = 0.0;

  for (int i = 0; i < listLength; i++) {
    if (list[i] > 0) {
      totPos += 1;
    } else if (list[i] < 0) {
      totNeg += 1;
    } else {
      totZero += 1;
    }
  }

  resPos  = (totPos / list.length);
  resNeg  = (totNeg / list.length);
  resZero = (totZero / list.length);

  print('Positive numbers: ($totPos / $listLength) = $resPos\n' + 
        'Negative numbers: ($totNeg / $listLength) = $resNeg\n' +
        'Negative numbers: ($totZero / $listLength) = $resZero');
}


main() {
  List<int> list = generateList(1250, 15);
  calculate(list);
}
