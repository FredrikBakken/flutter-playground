
import 'package:dart/udemy/intermediate/scope/house.dart';


main() {
  House home = new House('Street 12', 25);
  print('Address: ${home.address}');
  print('Home age: ${home.age}');

  home.address = 'Street 22';         // Setter
  print('Address: ${home.address}');  // Getter

  home.age = 25;                      // Setter
  print('Home age: ${home.age}');     // Getter
}