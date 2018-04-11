
import 'dart:io';
import 'dart:convert';


main() {
  String data = '';
  for(int i = 0; i <= 100; i++) {
    data = data + 'Hello world\r\n';
  }

  // Original data
  List original = UTF8.encode(data);

  // Compress data
  List compress = GZIP.encode(original);

  // Decompress data
  List decompress = GZIP.decode(compress);

  print('Original: ${original.length} bytes.');
  print('Compressed: ${compress.length} bytes.');
  print('Decompressed: ${decompress.length} bytes.');

  String decoded = UTF8.decode(decompress);
  assert(data == decoded);
}