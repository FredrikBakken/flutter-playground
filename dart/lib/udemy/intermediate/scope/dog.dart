
class Dog {
  // Variable
  static int _counter = 0;

  // Constructor
  Dog() {
    _counter++;
    print('There are ${_counter} of us.');
  }

  // Functions
  static void speak() {
    print('Woff!');
    run();
  }

  static void run() {
    print('Running');
  }
}