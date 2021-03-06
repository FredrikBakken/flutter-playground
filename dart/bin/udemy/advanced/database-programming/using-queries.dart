import 'dart:io';
import 'dart:async';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';


void insert(var query, String name, String topic) async {
  var result = await query.execute([name, topic]);
  print('New user id = ${result.insertId}');
}


main() async {
  var pool = new ConnectionPool(
    host: 'localhost',
    port: 3306,
    user: 'user',
    password: 'pass',
    db: 'school',
    max: 5
  );

  var query = await pool.prepare('insert into teachers (name,topic) values (?,?)');
  await insert(query, 'Bob', 'Building');
  await insert(query, 'Max', 'Shop');

}