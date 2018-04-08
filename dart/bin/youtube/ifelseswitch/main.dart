main(List<String> arguments) {
  // If and else

  // Outer scope
  bool isOn = false;

  if (isOn == false) {
    print('isOn is equal to $isOn');

    // Inner scope
    var kitty = 'cat';
    print(kitty);
  } else {
    print('isOn is equal to $isOn');
  }

  // print(kitty); <-- Not runnable in outer scope

  int test = 2;

  if (test == 2) {
    print('test is equal to two');
  } else if (test == 1) {
    print('test is equal to one');
  } else {
    print('test is equal to $test');
  }

  // Switch-case (using test variable)
  switch (test) {
    case 0:
      print('Switch - test is zero');
      break;
    case 1:
      print('Switch - test is one');
      break;
    case 2:
      print('Switch - test is two');
      break; // return;
    default:
      print('Switch - test is $test');
      break;
  }

  print('done!');
}
