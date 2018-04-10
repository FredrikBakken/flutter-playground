
import 'dart:io';


main() {
  Directory dir = Directory.current;
  print(dir.path);

  List<FileSystemEntity> list = dir.listSync(recursive: true);
  print('Entities in list: ${list.length}');
  list.forEach((item) {
    FileStat stat = item.statSync();
    print('${item}');
    print('Type: ${stat.type}');
    print('Changed: ${stat.changed}');
    print('Modified: ${stat.modified}');
    print('Accessed: ${stat.accessed}');
    print('Mode: ${stat.mode}');
    print('Size: ${stat.size}');
    print('');
  });
}