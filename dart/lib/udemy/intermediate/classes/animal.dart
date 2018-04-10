
class Animal {
  // Private variable : Only accessible in this scope
  String _name = '';

  // Constructor
  Animal({String name : ''}) {
    if (name.isNotEmpty) {
      _name = name;
    }
  }

  // Class function
  void sayHello() {
    if (_name.isEmpty) {
      print('Hello');
    } else {
      print('Hello ${_name} nice to meet you');
    }
  }
}