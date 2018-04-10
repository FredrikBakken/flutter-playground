
class Car {
  String _brand = '';
  int _age = 5;
  String model = '';

  Car (String brand, int age, String model) {
    _brand = brand;
    this._age = age;    // this is optional here
    this.model = model;
  }

  void horn() {
    print('Beeeeeeeeeep');
  }

  void details() {
    print('Brand: ${_brand}, age: ${_age}, model: ${model}');
  }

  void _display(String message) {
    print('Message: ${message}');
  }

  void sendCommand(String cmd) {
    this._display(cmd);
  }
}