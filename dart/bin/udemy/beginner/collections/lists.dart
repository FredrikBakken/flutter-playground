

main() {
  List list = [1, 2, 3, 4];

  print('List length: ${list.length}');
  print('Element at position 0: ${list[0]}');
  print('Element at index 3: ${list.elementAt(3)}');

  List things = new List();
  things.add(1);
  things.add('cats');
  things.add(true);
  print(things);

  List<int> numbers = new List<int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  // numbers.add('cats');     <- List only allows int's
  print(numbers);

}