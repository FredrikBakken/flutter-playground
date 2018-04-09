

main() {
  List people = ['Bob', 'Bobbie', 'Sam', 'Kent'];
  print(people);

  // For-loop
  for (int i = 0; i < people.length; i++) {
    print('Person at position ${i} is ${people[i]}');
  }

  // Anonymous function
  people.forEach((person) {
    print(person);
  });
}