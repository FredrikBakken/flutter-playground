/***
 * Make a Bed and Breakfast class (BnB) that inherits a House
 * class and uses a Hotel class as a interface.
 * The hotel class should have a "guests" variable as an integer.
 * The abstract house class should have a rooms variable as a
 * integer and a function "ringDoorbell".
 * The Bnb class will need to implement the house properties.
 */

import 'house.dart';
import 'hotel.dart';


class BnB extends House with Hotel {

  BnB() {
    guests = 0;
    rooms = 5;
  }

  void ringDoorbell() {
    print('Ding-dong!');
  }
}