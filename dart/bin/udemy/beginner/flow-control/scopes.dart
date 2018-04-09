

// Variables only exists in scopes where they are defined.
main() {
  // Scope 1
  int age = 25;

  if (age == 35) {
    // Scope 2
    print('You are 35!');

  } else {
    // Scope 3
    bool hasBills = true;
    print('You are ${age} old and have bills (${hasBills}).');
  }
}
