
// Function (starts with return type, void - return nothing)
void hello_printer() {
  for (int i = 0; i <= 8; i++) {
    print('Hello');
  }
}

void passing_variable(int times) {
  for (int i = 0; i <= times; i++) {
    print('$i of $times');
  }
}

// Function (string - returns string)
String createName(String first, [String last = 'No lastname', String extra = '...']) {
  return first + ' ' + last + extra;
}

main(List<String> arguments) {
  hello_printer();
  passing_variable(10);
  print(createName('Bob', 'Robert'));

}
