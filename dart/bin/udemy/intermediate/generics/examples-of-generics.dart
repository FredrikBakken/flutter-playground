
T add<T extends num>(T value, List<T> items) {
  T ret = value;
  items.forEach((value) {
    ret = ret + value;
  });

  return ret;

}


main() {
  List values = [1, 2, 3, 4, 5];
  
  print(add(0, values));
}