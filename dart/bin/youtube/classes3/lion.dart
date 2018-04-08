import 'feline.dart';

class Lion extends Feline {
  void roar() => print('ROAR');

  void test() {
    print('Testing in Lion.');
    assert(hasHair() == true);
    assert(hasBackbone());
    assert(hasClaws());

    super.test();
  }
}