
/***
 * Create a list of people, ask the user for an index.
 * Display the person in the list at the index the user
 * supplied.
 */

import 'dart:io';

main() {
  bool add = true;
  List<String> people = new List<String>();

  stdout.write('Add people to the list! (Stop adding people by empty input)\r\n');

  while (add) {
    String input = stdin.readLineSync();
    if (input == '') {
      add = false;
    } else {
      people.add(input);
    }
  }

  stdout.write('Which person do you want to select?\r\n');
  people.forEach((person) {
    print('${people.indexOf(person)} | ${person}');
  });

  int select = int.parse(stdin.readLineSync());
  print('You have selected ${people[select]}.');
}