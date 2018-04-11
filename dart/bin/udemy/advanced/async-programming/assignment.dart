/***
 * Append to a file and read it back asynchronously.
 */

import 'dart:io';
import 'dart:async';


Future<File> appendFile(String message) {
  String filename = Directory.current.path + '/assignment.txt';
  File file = new File(filename);
  return file.writeAsString(message, mode: FileMode.APPEND);
}

Future<String> readFile(File file) {
  return file.readAsString();
}


main() async {
  print('Starting execution');

  // Append to file
  String message = 'Hello world';
  File file = await appendFile(message);

  // Read file contents
  String contents = await readFile(file);
  print(contents);
}