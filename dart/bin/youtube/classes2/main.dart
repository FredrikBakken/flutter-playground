import 'house.dart';

void test() {
  // Constructor
  House house2 = new House(w: 10, l:15);
}

main(List<String> arguments) {
  House house1 = new House(w: 10);

  test();
  // Flagged for garbage collection
}