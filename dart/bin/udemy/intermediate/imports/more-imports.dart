
import 'package:http/http.dart' as http;

main() {
  var url = 'https://www.fredrikbakken.no/';
  http.get(url).then((response) {
    print('Response status code: ${response.statusCode}'); // 200 means ok
    print('Response body:\n${response.body}');
  });
}