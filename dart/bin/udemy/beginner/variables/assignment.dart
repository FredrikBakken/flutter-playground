/***
 * Ask the user for their first name, and store their input
 * in a variable. Then ask the user for their last name and
 * store that in a variable. Finally display the full name to
 * the user.
 */

import 'dart:io';


main() {
  stdout.write('What is your first name?\r\n');
  String firstname = stdin.readLineSync();

  stdout.write('What is your last name?\r\n');
  String lastname = stdin.readLineSync();

  stdout.write('Your name is ${firstname} ${lastname}.');
}