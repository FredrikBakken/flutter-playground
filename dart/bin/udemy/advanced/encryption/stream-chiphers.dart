import 'dart:math';
import 'dart:convert';
import 'dart:typed_data';
import 'package:collection/collection.dart';
import 'package:pointycastle/pointycastle.dart';


// From tutorial 2: Deriving keys
Uint8List createUint8ListFromString(String value) {
  return new Uint8List.fromList(UTF8.encode(value));
}


// From tutorial 2: Deriving keys
void display(String title, Uint8List key) {
  print(title);
  print(key);
  print(BASE64.encode(key));
  print('');
}


// From tutorial 3: Secure random numbers
Uint8List randomBytes(int length) {
  final rnd = new SecureRandom('AES/CTR/AUTO-SEED-PRNG');

  final key = new Uint8List(16);
  final keyParam = new KeyParameter(key);
  final params = new ParametersWithIV(keyParam, new Uint8List(16));

  rnd.seed(params);

  var random = new Random.secure();
  for (int i = 0; i < random.nextInt(255); i++) {
    rnd.nextUint8();
  }

  var bytes = rnd.nextBytes(length);
  return bytes;
}


// MAIN function
main() {
  final keybytes = randomBytes(16);
  final key = new KeyParameter(keybytes);

  final iv = randomBytes(8);
  final params = new ParametersWithIV(key, iv);

  StreamCipher cipher = new StreamCipher('Salsa20');
  cipher.init(true, params);

  // Encrypt
  String plaintext = 'Hello world';
  Uint8List plain_data = createUint8ListFromString(plaintext);
  Uint8List encrypted_data = cipher.process(plain_data);

  // Decrypt
  cipher.reset();
  cipher.init(false, params);
  Uint8List decrypted_data = cipher.process(encrypted_data);


  display('Plain text', plain_data);
  display('Encrypted data:', encrypted_data);
  display('Decrypted data:', decrypted_data);

  // Make sure they match!
  Function eq = const ListEquality().equals;
  assert(eq(plain_data, decrypted_data));
}