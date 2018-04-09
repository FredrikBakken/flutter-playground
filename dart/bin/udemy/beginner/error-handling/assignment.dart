/***
 * Ask the user for an age, if the age is less than 18, throw an
 * exemption of "too young".  If the age is over 99 throw an
 * exemption of "too old". Catch the exemptions and use a catch
 * all. Also split these tasks up into different functions.
 */

import 'dart:io';

// Ask the user to provide their age
int askUser(String question) {
  stdout.write('${question}');
  return int.parse(stdin.readLineSync());
}


// Check the user's age
void checkAge(int age) {
  try {
    if (age < 18) {
      throw new Exception('Too young');
    } else if (age > 99) {
      throw new Exception('Too old');
    }
  } catch (e) {
    print('There was an unknown error: ${e}');
  } finally {
    print('Exection completed!');
  }
}


// MAIN function
main() {
  int age = askUser('How old are you?\r\n');
  checkAge(age);
}