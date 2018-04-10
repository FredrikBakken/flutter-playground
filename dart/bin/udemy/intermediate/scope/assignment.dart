/***
 * Create a person class that has an age getter but not a
 * setter. This will allow the age to be read from the class
 * but not changed. Set the age in the class constructor.
 */

import 'package:dart/udemy/intermediate/scope/person.dart';


main() {
  Person person = new Person(15);
  
  int age = person.age;
  print('Person is ${age} years old.');
}