


void sayHello([String name = '']) {
  if (name.isNotEmpty) {
    name = name.padLeft(name.length + 1);
  }
  print('Hello${name}');
}


void download(String file, [bool open = false]) {
  print('Downloading ${file}');
  
  if (open) {
    print('Opening ${file}');
  }
}


main() {
  sayHello('Fredrik');
  sayHello();

  download('myfile.txt');
  download('myfile2.txt', true);
}