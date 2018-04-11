
import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/pointycastle.dart';


main() {
  Digest digest = new Digest('SHA-256');

  String value = 'Hello world';

  Uint8List data = new Uint8List.fromList(UTF8.encode(value));
  Uint8List hash = digest.process(data);

  print('Value to hash: ${value}');
  print('Data to hash: ${data}');
  print('Hashed value: ${BASE64.encode(hash)}');
}