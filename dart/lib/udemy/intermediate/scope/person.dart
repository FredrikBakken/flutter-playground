/***
 * Create a person class that has an age getter but not a
 * setter. This will allow the age to be read from the class
 * but not changed. Set the age in the class constructor.
 */


class Person {
  int _age;

  Person(int age) {
    this._age = age;
  }

  int get age {
    return _age;
  }
}