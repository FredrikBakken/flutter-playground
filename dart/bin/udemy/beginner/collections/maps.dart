

main() {
  // Map : Key-value pair
  // Map people = {'Dad' : 'Bob', 'Son' : 'Bobbie', 'Daughter' : 'Sally'};
  Map<String, String> people = new Map<String, String>();
  people.putIfAbsent('Dad', () => 'Bob');
  people.putIfAbsent('Son', () => 'Bobbie');
  people.putIfAbsent('Daughter', () => 'Sally');

  print(people);
  print('The keys are: ${people.keys}');
  print('The values are: ${people.values}');
  print('Dad is ${people['Dad']}');
  print('Son is ${people['Son']}');
}