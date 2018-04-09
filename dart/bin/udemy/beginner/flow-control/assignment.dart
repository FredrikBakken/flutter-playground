/***
 * Use a loop to count to 10. Print each number on the
 * screen. At the 5th loop, print out "half way there".
 */

main() {
  int value;
  int init = 0;
  int max = 10;

  // Do-while loop
  value = init;
  print('Do-while start!');
  do {
    if (value == 5) {
      print('${value} : Half-ways there!');
    } else {
      print(value);
    }
    value++;
  } while (value <= max);
  print('Do-while finished!\n');


  // While loop
  value = init;
  print('While start!');
  while (value <= max) {
    if (value == 5) {
      print('${value} : Half-ways there!');
    } else {
      print(value);
    }
    value++;
  }
  print('While finished!\n');


  // For-loop
  value = init;
  print('For-loop start!');
  for(int i = 0; i <= max; i++) {
    if (value == 5) {
      print('${value} : Half-ways there!');
    } else {
      print(value);
    }
    value++;
  }
  print('For-loop finished!');
}