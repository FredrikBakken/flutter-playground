/***
 * Import the "path" package and use it to join a directory
 * path to a filename and print out the results.
 */

import 'package:path/path.dart' as p;


main() {
  String directory = '../GitHub/flutter-playground/dart/bin/udemy/intermediate/imports';
  String filename = 'test.txt';

  String path = p.join(directory, filename);
  print(path);
}