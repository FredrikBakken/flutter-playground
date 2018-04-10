/***
 * Create an employee class. This class should have two strings, "name"
 * and "position". Set those strings in the constructor. Then make a
 * function that prints out the employee's name and position.
 */

import 'package:dart/udemy/intermediate/classes/employee.dart';


main() {
  Employee bert = new Employee(name: 'Bert', position: 'CEO');
  bert.printDetails();

  Employee test = new Employee();
  test.printDetails();
}