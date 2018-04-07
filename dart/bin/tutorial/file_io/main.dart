import 'dart:convert';
import 'dart:io';

void list(String path) {
  try {
    Directory root = new Directory(path);
    if (root.existsSync()) {
      for(FileSystemEntity f in root.listSync()) {
        print(f.path);
      }
    }
  } catch (e) {
    print(e.toString());
  }
}


bool writeFile(String file, String data, FileMode mode) {
  try {
    File f = new File(file);
    RandomAccessFile raf = f.openSync(mode: mode);
    raf.writeStringSync(data);
    raf.flushSync();
    raf.closeSync();
    return true;
  } catch (e) {
    print(e.toString());
    return false;
  }
}


String readFile(String file) {
  try {
    File f = new File(file);
    return f.readAsStringSync();
  } catch (e) {
    print(e.toString());
  }
}


List<String> readLines(String file) {
  try {
    File f = new File(file);
    return f.readAsLinesSync();
  } catch (e) {
    print(e.toString());
  }
}


bool writeJSON(String file) {
  Map<String, int> map = new Map<String, int>();
  map.putIfAbsent('Bob', () => 25);
  map.putIfAbsent('Bobbie', () => 30);

  String data = JSON.encode(map);
  return writeFile(file, data, FileMode.WRITE);
}


void readJSON(String file) {
  String data = readFile(file);
  if (data.isEmpty) {
    print('No data in file.');
    return;
  }

  Map<String, int> people = JSON.decode(data);
  print('People Object:');
  people.forEach((key, value) {
    print('$key : $value');
  });
}


main(List<String> arguments) {
  String path = 'C:/Users/fredd/Documents/Github/flutter-playground/dart/bin/file_io';
  String txtFile = 'C:/Users/fredd/Documents/Github/flutter-playground/dart/bin/file_io/test.txt';
  String txtJSON = 'C:/Users/fredd/Documents/Github/flutter-playground/dart/bin/file_io/json.txt';

  list(path);
  
  if (writeFile(txtFile, 'Hello World!\n', FileMode.APPEND)) {
    // Print the content of the file
    print(readFile(txtFile));

    // Read the lines
    List<String> list = readLines(txtFile);
    print(list.length);
  }

  if (writeJSON(txtJSON)) {
    readJSON(txtJSON);
  }

}