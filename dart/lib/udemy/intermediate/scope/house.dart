
class House {
  String _address;
  int _age = 50;

  House(String address, int age) {
    this._address = address;
    this._age = age;
  }

  String get address {
    return _address;
  }

  int get age {
    return _age;
  }

  void set address(String value) {
    _address = value;
  }

  void set age(int value) {
    _age = value * 2;
  }

}