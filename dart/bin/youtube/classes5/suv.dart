import 'car.dart';
import 'truck.dart';
import 'industrial.dart';

class Suv extends Truck with Car, Industrial {
  String color() => 'Yellow';
  int doors() => 3;
}