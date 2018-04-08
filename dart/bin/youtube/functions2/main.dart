import 'package:dart/dart.dart' as ext;
import 'package:dart/ext_var_file.dart' as ext2;

void asObject(int i) {
  print(i);
}

int compair({int apples = 0, int oranges = 0}) {
  return apples.compareTo(oranges);
}

main(List<String> arguments) {
  List<int> list = new List<int>();
  list.add(1);
  list.add(2);
  list.add(3);

  // Function as an object
  print('As an object');
  list.forEach(asObject);

  // Anonymous function
  print('As an anonymous function');
  list.forEach((i) {
    print(i);
  });

  // External function
  print('External function');
  print(ext.calculate());
  print(ext2.resName('Bob'));

  print('Naming a parameter');
  print(compair(apples: 1, oranges: 3));
  print(compair(apples: 9, oranges: 3));
  print(compair(apples: 3, oranges: 3));
}
