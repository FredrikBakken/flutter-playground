
import 'stray.dart';
import 'trainer.dart';

void log<T>(T value) {
  print(value);
}

T add<T extends num>(T value) {
  return value + 1;
}


main(List<String> arguments) {
  String hello = 'Hello';
  int value = 123123123;

  log(hello);
  log(add(value));


  Stray fido = new Stray();
  Trainer<Stray> bob = new Trainer<Stray>();
  bob.add(fido);
  bob.train();
  bob.remove(fido);
}