import 'dart:io';
import 'dart:convert';


main() {
  var data = 'Hello world';

  List<int> dataToSend = UTF8.encode(data);
  int port = 3000;

  // Server
  RawDatagramSocket.bind(InternetAddress.LOOPBACK_IP_V4, port).then((RawDatagramSocket updSocket) {
    updSocket.listen((RawSocketEvent event) {
      if (event == RawSocketEvent.READ) {
        Datagram dg = updSocket.receive();
        print(UTF8.decode(dg.data));
      }
    });

    // Client
    updSocket.send(dataToSend, InternetAddress.LOOPBACK_IP_V4, port);
    print('*Sent!');
  });
}