main(List<String> arguments) {
  bool running = true;
  int counter = 0;

  // While loop (check statement first, then execute)
  while (running) {
    counter++;
    if (counter == 4) {
      continue;
    }
    print('While counter = $counter.');
    if (counter >= 5) {
      running = false;
    }
  }

  // Do-while loop (execute, then check statement)
  running = true;
  counter = 0;
  do {
    counter++;
    print('While counter = $counter.');
    if (counter >= 5) {
      running = false;
    }
  } while (running);

  // For loop
  for (int i = 0; i < 5; i++) {
    print('i = $i');
  }

  List<String> list = new List<String>();
  list.add('Kent');
  list.add('Bob');
  list.add('Robert');
  for (int i = 0; i < list.length; i++) {
    print('i ($i) = ' + list[i]);
  }

  // For loop replacement (while loop)
  counter = 0;
  while (counter < list.length) {
    print('counter ($counter) = ' + list[counter]);
    counter++;
  }
}
