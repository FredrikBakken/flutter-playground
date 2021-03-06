
import 'dart:io';
import 'dart:convert';


String generateData() {
  String data = '';
  for (int i = 0; i <= 1000; i++) {
    data = data + 'Hello world\r\n';
  }
  return data;
}


int testCompress(var codec) {
  String data = generateData();

  List original = UTF8.encode(data);
  List compressed = codec.encode(original);
  List decompressed = codec.decode(compressed);

  print('Testing ${codec.toString()}');
  print('Original ${original.length}');
  print('Compressed ${compressed.length}');
  print('Decompressed ${decompressed.length}');

  print('');

  String decoded = UTF8.decode(decompressed);
  assert(data == decoded);

  return compressed.length;
}


main() {
  int zlib = testCompress(ZLIB);
  int gzip = testCompress(GZIP);

  print('zlib = ${zlib}');
  print('gzip = ${gzip}');
}