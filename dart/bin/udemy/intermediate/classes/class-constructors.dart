
import 'package:dart/udemy/intermediate/classes/animal.dart';


main() {
  Animal dog = new Animal();
  dog.sayHello();
  
  Animal cat = new Animal(name: 'Bob');
  cat.sayHello();
}