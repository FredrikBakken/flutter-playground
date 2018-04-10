
import 'package:dart/dart.dart' as mycode;

import 'dart:convert';


main() {
  String myvalue = mycode.sayHello();
  print(myvalue);

  List ebytes = UTF8.encode(myvalue);
  String encoded = BASE64.encode(ebytes);
  print('Encoded: ${encoded}');

  List dbytes = BASE64.decode(encoded);
  String decoded = UTF8.decode(dbytes);
  print('Decoded: ${decoded}');
}