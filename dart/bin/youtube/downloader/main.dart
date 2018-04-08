import 'package:image/image.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

void download(String url, String path, String preview) {
  // Get the file
  var data = http.readBytes(url);
  
  // Write the file to disk
  data.then((buffer) {
    File f = new File(path);
    RandomAccessFile raf = f.openSync(mode: FileMode.WRITE);
    raf.writeFromSync(buffer);
    raf.flushSync();
    raf.closeSync();

    // Load the image
    Image image = decodeImage(new File(path).readAsBytesSync());

    // Resize the image
    Image thumbnail = copyResize(image, 200);

    // Save the thumbnail to disk
    new File(preview)
    ..writeAsBytesSync(encodePng(thumbnail));

  });
}

main(List<String> arguments) {
  String url = 'https://flutter.io/images/intellij/hot-reload.gif';
  String path = 'C:/Users/fredd/Documents/Github/flutter-playground/dart/bin/downloader/test.gif';
  String preview = 'C:/Users/fredd/Documents/Github/flutter-playground/dart/bin/downloader/preview.png';

  download(url, path, preview);
}