
import 'dart:io';

main() {
  print('OS: ${Platform.operatingSystem} ${Platform.version}');

  if (Platform.isWindows) {
    print('Run Windows specific code!');
  } else if (Platform.isLinux) {
    print('Run Linux specific code!');
  } else {
    print('Run for other platforms.');
  }

  print('Path: ${Platform.script.path}');
  print('Dart: ${Platform.executable}');

  print('Environment:');
  Platform.environment.keys.forEach((key) {
    print('${key} ${Platform.environment[key]}');
  });
}