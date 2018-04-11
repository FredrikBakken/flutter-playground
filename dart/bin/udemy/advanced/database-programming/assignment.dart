import 'dart:io';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';


void insert(var query, String name) async {
  var result = await query.execute([name]);
  print('New student ID: ${result.insertId}');
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
  
  var query = await pool.prepare('insert into students (name) value (?)');
  await insert(query, 'Marc');
  await insert(query, 'Bob');
  await insert(query, 'Kent');
  await insert(query, 'Arne');

  pool.closeConnectionsNow();
  exit(0);

}