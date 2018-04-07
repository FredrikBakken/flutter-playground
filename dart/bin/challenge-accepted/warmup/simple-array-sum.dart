
int summarize(var list) {
  int total = 0;

  for(int i = 0; i < list.length; i++) {
    try {
      total += list[i];
    } catch (e) {
      print(e.toString());
    }
  }

  return total;
}


main() {
  var list = [1, 2, 3, 4, 10, 11];

  print(summarize(list));
}