import 'feline.dart';

class Lion extends Feline {
  bool hasBackbone() => true;
  bool hasHair() => true;
  bool hasClaws() => true;

  @override
  void speak() {
    print('Roar!!');
  }
}