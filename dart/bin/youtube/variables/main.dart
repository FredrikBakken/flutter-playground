main(List<String> arguments) {
  print("Dart Variable Introduction!");

  // Dynamic variables - Can change at any time
  var hello_world = 'Hello World!';
  print(hello_world);

  hello_world = 'Hello World, again!!';
  print(hello_world);

  // Constant | Modified value will never change.
  const meaning_of_life = 42;
  print(meaning_of_life);

  // Final    | Modified variable will never change.
  final meaning_of_life__again = 42;
  print(meaning_of_life__again);

  // Boolean
  bool isWorking = false;
  isWorking = true;

  // Numbers
  num age = 24;
  num years = 30;
  num age_years = age + years;
  print("Age of developer is $age, but in " +
      years.toString() +
      " years, he'll be $age_years years.");

  int cats = 100;
  double pi = 3.14;

  // Strings
  String old_world = 'HELLO THERE, MY DEAR OLD WORLD!';
  old_world += ' How are you today?';
  print(old_world);

  print(old_world.substring(0, 5));

  old_world = old_world.replaceAll('MY DEAR OLD WORLD', 'my dear old World');
  print(old_world);

  String book_title = "The world's issues in a day";
  String book_title2 = 'The world\'s issues in\r\n a day';
  print(book_title);
  print(book_title2);

  String names = "Kåre, Arne, Bjarne, Charles";
  assert(names.contains('Kåre'));

  // Lists
  List<String> string_list = names.split(', ');
  print(string_list);

  print(string_list.elementAt(2));
  print(string_list[2]);

  string_list.add('Bobbie');
  print(string_list);

  string_list.insert(0, 'Douglas');
  print(string_list);

  print(string_list.indexOf('Kåre'));

  string_list.forEach((v) {
    print(v);
  });

  // Maps
  Map<String, int> people = {
    'Kåre': 18,
    'Bobbie': 90,
    'Douglas': 3,
  };

  print(people.keys);
  print(people.values);

  print(people['Kåre']);
  print(people[people.keys.elementAt(0)]);

  people['Mark'] = 50;
  print(people['Mark']);

  people.forEach((k, v) {
    print('$k : $v');
  });
}
