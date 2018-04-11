
import 'dart:io';

main() {
  // List all files in a directory
  Process.run('C:/windows/System32/notepad.exe', []).then((ProcessResult results) {
    print(results.stdout);
    print('Exit code: ${results.exitCode}');
  });
}