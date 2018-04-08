// Local
import 'package:dart/dart.dart' as dart;

// Built in
import 'dart:convert';


main(List<String> arguments) {
  print('Hello world: ${dart.calculate()}!');

  Map<String, int> map = new Map<String, int>();
  map.putIfAbsent('Bob', () => 25);
  map.putIfAbsent('Bobbie', () => 30);

  String enc = JSON.encode(map);
  print(enc);

  Map<String, int> people = JSON.decode(enc);

  people.forEach((key, value) {
    print('$key is $value years old.');
  });
}