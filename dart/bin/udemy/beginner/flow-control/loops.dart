

main() {
  int value;
  int init = 1;
  int max = 5;

  // Do-while loop
  value = init;
  do {
    print('Value in do-while loop is ${value}');
    value++;
  } while (value < max);
  print('Done with do-while loop.\n');


  // While loop
  value = init;
  while (value < max) {
    print('Value in while loop is ${value}');
    value++;
  }
  print('Done with while loop.\n');


  // Infinate loop
  value = init;
  do {
    print('Value = ${value}');
    value++;

    // Add flow-control to avoid infinate loop
    if (value == 50) {
      print('This is getting out of hand...');
      continue;
    } else if (value == 100) {
      print('Value is ${value}, time to stop...');
      break;
    }
  } while (true);
  print('Finished!');
}