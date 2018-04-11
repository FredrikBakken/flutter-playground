
import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/pointycastle.dart';


Uint8List createUint8ListFromString(String value) {
  return new Uint8List.fromList(UTF8.encode(value));
}


void display(String title, Uint8List key) {
  print(title);
  print(key);
  print(BASE64.encode(key));
  print('');
}


main() {
  String password = 'password';

  var salt = createUint8ListFromString('salt');
  var pkcs = new KeyDerivator('SHA-1/HMAC/PBKDF2');
  var params = new Pbkdf2Parameters(salt, 100, 16);

  pkcs.init(params);

  Uint8List key = pkcs.process(createUint8ListFromString(password));

  display('Key value', key);

}