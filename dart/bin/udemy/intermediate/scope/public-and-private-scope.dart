import 'package:dart/udemy/intermediate/scope/car.dart';

main() {
  Car tesla = new Car('Tesla', 6, 'Model S');
  tesla.horn();

  tesla.model = 'Model X';    // Can be changed
  // tesla._age = 10;  <-- Cannot be changed, wrong scope
  tesla.details();

  // tesla._display('Wake up car');    <-- Cannot be called, private function
  tesla.sendCommand('Wake up car');
}