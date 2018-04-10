/***
 * Create an employee class. This class should have two strings, "name"
 * and "position". Set those strings in the constructor. Then make a
 * function that prints out the employee's name and position.
 */

class Employee {
  // Class variables
  String _name = 'No name';
  String _position = 'No position';

  // Class constructor
  Employee({name : null, position: null}) {
    if (name != null && position != null) {
      this._name = name;
      this._position = position;
    }
  }

  // Class function
  void printDetails() {
    print('Employee name: ${_name}\nEmployee positions: ${_position}');
  }
}