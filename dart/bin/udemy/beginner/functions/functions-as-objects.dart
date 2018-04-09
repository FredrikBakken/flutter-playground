

int calcYears({int age, int multiplier}) {
  return age * multiplier;
}


main() {
  int age = 25;
  var dogyears = calcYears;
  var catyears = calcYears;

  print('Your age in dog years is ${dogyears(age: 25, multiplier: 7)}.');
  print('Your age in cat years is ${dogyears(age: 25, multiplier: 12)}.');
}