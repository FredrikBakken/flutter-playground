
import 'package:dart/udemy/intermediate/generics/counter.dart';


main() {
  Counter<double> doubles = new Counter<double>();
  doubles.addAll([1.1, 2.2, 3.3, 4.4]);
  doubles.total();

  Counter<int> ints = new Counter<int>();
  ints.addAll([1, 2, 3, 4]);
  ints.total();
}