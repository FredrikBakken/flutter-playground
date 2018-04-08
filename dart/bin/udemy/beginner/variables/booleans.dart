

main() {
  bool isOn;  // Boolean variable (true / false) : Can be changed
  bool isDog = false;
  bool isCat = true;

  print('isOn = ${isOn}');
  print('isDog = ${isDog}');
  print('isCat = ${isCat}');

  isDog = true;
  isCat = false;

  print('\nisDog = ${isDog}');
  print('isCat = ${isCat}');

  // Check type
  print('\nisOn is a ${isOn.runtimeType}');
  print('isDog is a ${isDog.runtimeType}');
  print('isCat is a ${isCat.runtimeType}');
}