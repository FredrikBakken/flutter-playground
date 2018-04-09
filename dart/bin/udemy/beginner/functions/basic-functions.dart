


void newFunction() {
  print('Testing');
}


void sayHello(String name) {
  print('Hello ${name}!');
}


int dogYears(int age) {
  return age * 7;
}


int squareMeter(int width, int length) {
  return width * length;
}


double paintNeeded(int wall1, int wall2, int wall3, int wall4, int ceiling) {
  int size = wall1 + wall2 + wall3 + wall4 + ceiling;
  return size / 5;
}


// MAIN Function
main() {
  newFunction();

  String name = 'Fredrik';
  sayHello(name);

  print('Your age in dog years is ${dogYears(25)}');
  
  int width = 10;
  int length = 15;
  print('You house has width = ${width} and length = ${length}, therefore you house is ${squareMeter(width, length)}m2.');

  int hwall1 = squareMeter(2, 3);
  int hwall2 = squareMeter(3, 4);
  int hwall3 = squareMeter(2, 3);
  int hwall4 = squareMeter(3, 4);
  int hceiling = squareMeter(4, 4);
  double paint = paintNeeded(hwall1, hwall2, hwall3, hwall4, hceiling);
  print('You need ${paint} liters of paint.');
}