// import 'package:dart/classes1.dart' as c1;
import 'cat.dart';
import 'dog.dart';
import 'house.dart';

main(List<String> arguments) {
  Cat whiskey = new Cat();
  Cat whiskers = new Cat();
  Dog spot = new Dog();
  Dog fido = new Dog();
  House house1 = new House();
  House house2 = new House();
  House house3 = new House();

  whiskey.speak();
  whiskers.speak();
  spot.speak();
  fido.speak();

  print(spot.color());
  print(whiskers.clawsOut());

  // print(house1._age); <-- Private, not accessible outside of class
  house2.color = 'Red';
  house3.color = 'Yellow';
  
  print(house1.color);
  house1.width = 10;
  house1.length = 15;

  print(house1.footage);

  house1.yearsold = 10;
  print(house1.yearsold);

  List<House> homes = new List<House>();
  homes.add(house1);
  homes.add(house2);
  homes.add(house3);

  homes.forEach((v) {
    print(v.color);
  });

}