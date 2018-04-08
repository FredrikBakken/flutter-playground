

main() {
  // Numbers
  num age = 25;
  num height = 5.5;

  // Integers
  int people = 6;

  // Doubles
  double temp = 32.06;

  // Parse to integer
  int test = int.parse('13');
  int err = int.parse('13.50', onError: (source) => null);
  print(test);
  print(err);

  // Math
  int dogyears = 7;
  int dogage = age * dogyears;
  print('Your age in dog-years = ${dogage}');
}