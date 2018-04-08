import 'mamal.dart';

class Feline extends Mamal {
  bool hasClaws() => true;

  void test() {
    print('Testing in Feline.');
    assert(hasBackbone());
    assert(hasHair());
  }
}