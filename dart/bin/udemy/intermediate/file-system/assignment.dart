/***
 * Create a file in the current directory.
 * Write "Hello World" into the file.
 * Read the contents of the file back.
 * Delete the file.
 */


import 'dart:io';


void writeFile(File file, String message) {
    RandomAccessFile raf = file.openSync(mode: FileMode.WRITE);
    raf.writeStringSync(message);
    raf.closeSync();
}


void readFile(File file) {
  if (!file.existsSync()) {
    print('File does not exist, execution stopping...');
    return;
  }

  print(file.readAsStringSync());
}


void deleteFile(File file) {
  if (file.existsSync()) {
    file.deleteSync();
    print('File deleted');
  } else {
    print('File does not exist.');
  }
}



main() {
  String filename = '/assignment.txt';
  Directory dir = Directory.current;
  
  File file = new File(dir.path + filename);
  writeFile(file, 'Hello World');
  readFile(file);
  deleteFile(file);
}