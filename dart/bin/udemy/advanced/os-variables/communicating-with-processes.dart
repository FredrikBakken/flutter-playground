
import 'dart:io';
import 'dart:convert';

main() {
  // Linux Specific
  Process.start('cat', []).then((Process process) {
    // Transform the output
    process.stdout.transform(UTF8.decoder).listen((data) {
      print(data);
    });

    // Send to the process
    process.stdin.writeln('Hello world');

    // Stop the process
    Process.killPid(process.pid);

    // Get the exit code
    process.exitCode.then((int code) {
      print('Exit code: ${code}');

      // Exit
      exit(0);
    });
  });
}