/***
 * Download a web page using HTTP Get and display the length.
 */

import 'package:http/http.dart' as http;

main() async {
  var url = 'https://www.vg.no/';
  var response = await http.get(url);
  print(response.contentLength);
}