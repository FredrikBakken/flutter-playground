

main() {
  (){print('Hello');};

  List people = ['Bob', 'Bobbie', 'Sam'];
  people.forEach(print);

  print('----------');
  people.forEach((name) {
    print(name);
  });

  print('----------');
  people.where((name) {
    switch (name) {
      case 'Sam':
        return true;
      case 'Bobbie':
        return false;
      case 'Bob':
        return true;
    }
  }).forEach(print);
}