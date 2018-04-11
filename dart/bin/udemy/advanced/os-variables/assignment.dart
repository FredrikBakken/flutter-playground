/***
 * Determine the operating system you are on and print
 * the PATH variable from the operating system.
 */

import 'dart:io';


main() {
  String os = Platform.operatingSystem;
  String version = Platform.version;
  print('OS: ${os}  |  Version: ${version}');
  
  String path = Platform.environment['Path'];
  List path_contents = path.split(';');
  path_contents.forEach((item) {
    print(item);
  });
}