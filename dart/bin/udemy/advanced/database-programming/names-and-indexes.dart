import 'dart:io';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';


main() async {
  var pool = new ConnectionPool(
    host: 'localhost',
    port: 3306,
    user: 'user',
    password: 'pass',
    db: 'school',
    max: 5
  );

  var results = await pool.query('select Name, Topic from teachers');

  await results.forEach((row) {
    print('Name: ${row[0]}, topic: ${row.Topic}');
  });

  pool.closeConnectionsNow();
  exit(0);

}