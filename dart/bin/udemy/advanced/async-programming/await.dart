
import 'dart:io';
import 'dart:async';


Future<File> appendFile() {
  File file = new File(Directory.current.path + '/test2.txt');
  DateTime now = new DateTime.now();
  return file.writeAsString(now.toString() + '\r\n', mode: FileMode.APPEND);
}


main() async {
  print('Starting');
  File file = await appendFile();

  print('Appended to file ${file.path}');

  print('*** End');

}