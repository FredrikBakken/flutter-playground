/***
 * Compress some data using GZIP or ZLIB and write it
 * to a file, then decompress it and print it on the screen.
 */

import 'dart:io';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;


// Compress files in selected folder
void compress(List files, var codec) {
  Archive archive = new Archive();

  // Create instance of files and add to archivefile
  files.forEach((String path) {
    File file = new File(path);
    ArchiveFile archivefile = new ArchiveFile(p.basename(path), file.lengthSync(), file.readAsBytesSync());
    archive.addFile(archivefile);
  });

  // Compressing files
  File f = new File('assignment/compressed_' + codec + '.zip');
  
  if (codec == 'ZIP') {
    ZipEncoder gzip = new ZipEncoder();
    f.writeAsBytesSync(gzip.encode(archive));
  } else if (codec == 'TAR') {
    List<int> tar = new TarEncoder().encode(archive);
    f.writeAsBytesSync(tar);
  }
}


// Decompress compressed files
void decompress() {

}


// Measure size
void compareSize() {

}


// Main function
main() {
  // Add files in current directory to list
  List files = new List();
  Directory.current.listSync().forEach((FileSystemEntity fse) {
    if (fse.statSync().type == FileSystemEntityType.FILE) {
      files.add(fse.path);
    }
  });

  // Initiate stopwatch
  var stopwatch = new Stopwatch();

  // Testing on specific codecs
  var codecs = ['', 'ZIP', 'TAR', 'ZLIB', 'GZIP', 'BZIP2'];  // First element is not tested
  for (int i = 0; i < codecs.length; i++) {
    stopwatch.start();
    // TIME START

    // Avoid first run for most optimal time test
    if (i != 0) {
      compress(files, codecs[i]);
    }

    // TIME STOP
    print(stopwatch.elapsed);
    stopwatch.reset();
  }

}