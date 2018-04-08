

main() {
  String hello = 'Hello world!';
  print('Hello world!');
  print(hello);

  String name = 'Fredrik Bakken';
  print('Hello ${name}.');

  // Get a substring
  String firstname = name.substring(0, 7);
  print('firstname = ${firstname}');

  // Get the index of a string
  int index = name.indexOf(' ');
  String lastname = name.substring(index).trim();
  print('lastname = ${lastname}');

  // Length
  print('Name length: ${name.length}');

  // Contains
  print(name.contains('redr'));

  // Create a list
  List parts = name.split(' ');
  print(parts);
}