import 'bird.dart';
import 'scorpion.dart';
import 'feline.dart';

// Interfaces
class Monster implements Bird, Scorpion, Feline {
  bool hasStinger() => true;
  bool hasHair() => false;
  bool hasWings() => true;
  bool hasBackbone()  => true;
  bool hasClaws() => true;

  @override
  void speak() {
    print('wralallalrlalrallgggg');
  }
}