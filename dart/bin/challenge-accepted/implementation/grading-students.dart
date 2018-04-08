import 'dart:math';


List<int> generateGrades(numgrades, max) {
  Random randgen = new Random();
  List<int> grades = new List<int>();

  for (int i = 0; i < numgrades; i++) {
    grades.add(randgen.nextInt(max));
  }
  return grades;
}


void roundingGrades(List<int> grades) {
  // Initialize a list of higher multiple's
  List<int> higherMultiples = new List<int>();
  for (int i = 40; i <= 100; i = i + 5) {
    higherMultiples.add(i);
  }

  // Loop through grades and check if grade fullfills next multiple
  for (int i = 0; i < grades.length; i++) {
    if (grades[i] >= 38) {    // Higher than 38 is passing grade
      int gradeAdd1 = grades[i] + 1;
      int gradeAdd2 = grades[i] + 2;

      if (higherMultiples.contains(gradeAdd1)) {
        grades[i] = gradeAdd1;
      } else if (higherMultiples.contains(gradeAdd2)) {
        grades[i] = gradeAdd2;
      }
    }
  }
  print(grades);
}


main() {
  List<int> grades = generateGrades(40, 100);
  print(grades);
  roundingGrades(grades);
}