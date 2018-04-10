
import 'dart:io';


void writeFile(File file) {
  // Append, write
  RandomAccessFile raf = file.openSync(mode: FileMode.WRITE);
  raf.writeStringSync('Hello world!\r\nHow are you today?');
  raf.flushSync();  // Not necessary, since close calls flush
  raf.closeSync();
}


void readFile(File file) {
  if(!file.existsSync()) {
    print('File not found!');
    return;
  }

  print('Reading string...');
  print(file.readAsStringSync());
  
  print('Reading bytes...');
  List values = file.readAsBytesSync();
  values.forEach((value) {
    print(value);
  });
}


main() {
  Directory dir = Directory.current;
  print(dir.path);

  File file = new File(dir.path + '/myfile.txt');
  writeFile(file);
  readFile(file);
}