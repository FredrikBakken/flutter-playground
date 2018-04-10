
import 'package:dart/udemy/intermediate/classes/dog.dart';

main() {
  Dog fido = new Dog();
  print('${fido.name} is ${fido.ageInDogYears()} dog years old.');

  Dog spot = new Dog(age: 3, name: 'Spot');
  print('${spot.name} is ${spot.ageInDogYears()} dog years old.');
}