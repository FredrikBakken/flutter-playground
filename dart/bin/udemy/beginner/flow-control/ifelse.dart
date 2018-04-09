
main() {
  int age = 110;

  if (age == 25) {
    print('You are ${age} old.');
  } else if (age < 18) {
    print('You are a minor!');
    if (age < 13) {
      print('You are not even a teenager');
    }
  } else if (age > 65) {
    print('You are a senior!');
    if (age > 102) {
      print('You are lucky to be alive.');
    }
  } else {
    print('You are not ${age} old.');
  }
}
