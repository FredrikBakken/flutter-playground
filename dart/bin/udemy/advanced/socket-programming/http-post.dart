import 'package:http/http.dart' as http;


main() async {
  var url = 'http://httpbin.org/post';
  var response = await http.post(url, body: 'name=Fredrik&color=black');
  print('Response status: ${response.statusCode}');
  print('Response body:\n${response.body}');
}