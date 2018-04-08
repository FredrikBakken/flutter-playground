import 'dart:math';

// Generate kangaroo data
Map generateKangaroos(randposition, randjump) {
  Random randgen = new Random();
  Map kangaroos = new Map();

  for (int i = 0; i < 2; i++) {
    kangaroos[i] = {};
    kangaroos[i]['start'] = randgen.nextInt(randposition);
    kangaroos[i]['jump'] = randgen.nextInt(randjump);
  }
  return kangaroos;
}


// Analyse the kangaroos
String analyseJumps(Map kangaroos) {
  // TODO
  
  return '';
}


main() {
  Map kangaroos = generateKangaroos(5, 3);
  print(kangaroos);
  print(analyseJumps(kangaroos));
}