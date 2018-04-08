import 'counter.dart';


main(List<String> arguments) {
  Counter.printCount();
  Counter.increase();
  Counter.increase();
  Counter.printCount();

  Counter obj = new Counter();
  obj.addTen();
  print(obj.count);
  obj.count = 5;
  print(obj.count);
  obj = null;
  
  print('Obj set to null');

  Counter.printCount();

  Counter obj2 = new Counter();
  obj2.addTen();
  print(obj2.count);
  obj2 = null;

  Counter.printCount();
}