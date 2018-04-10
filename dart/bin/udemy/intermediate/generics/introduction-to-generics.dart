
// Simple Generics Example
void add<T>(T a, T b) {
    print(a + b);
}


// More Complex Generics Example
void addNumbers<T extends num>(T a, T b) {
  print(a + b);
}


main() {
  List<int> numbers = new List<int>();
  numbers.addAll([1, 2, 3, 4]);
  print(numbers);

  List<String> strings = new List<String>();
  strings.addAll(['a', 'b', 'c', 'd']);
  print(strings);

  add<int>(1, 2);
  add<double>(13.2, 2.09);
  add<String>('Hello ', 'world');

  addNumbers<int>(1, 2);
  addNumbers<double>(13.2, 2.09);
  addNumbers<String>('Hello ', 'world');  // Does work, eventhough it is not num
}
