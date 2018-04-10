
import 'dart:io';

main() {
  Directory dir = Directory.systemTemp.createTempSync();
  print(dir.path);

  if (dir.existsSync()) {
    print('Removing ${dir.path}');
    dir.deleteSync();
  } else {
    print('Could not find ${dir.path}');
  }

}