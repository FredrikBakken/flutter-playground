import 'dart:async';
import 'package:http/http.dart' as http;


main() async {
  var url = 'http://httpbin.org';
  var response = await http.get(url);
  print('Response status ${response.statusCode}');
  print('Response body:\n${response.body}');
}