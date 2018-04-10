
import 'dart:io';

main() {
  String path = 'C:/';
  Directory dir = new Directory(path);

  if (dir.existsSync()) {
    print('Exists!');
  } else {
    print('Not found!');
  }

}