
import 'mamal.dart';

class Feline extends Mamal {
  bool hasClaws = true;

  void growl() {
    print('Grrrrowl!');
  }

  @override
  void test() {
    print('Testing in feline');
    super.test();
  }
}