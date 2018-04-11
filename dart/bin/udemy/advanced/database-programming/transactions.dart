import 'dart:io';
import 'dart:async';
import 'package:sqljocky5/constants.dart';
import 'package:sqljocky5/sqljocky.dart';
import 'package:sqljocky5/utils.dart';


Future<int> find(var pool, String name) async {
  Query query = await pool.prepare('select idteachers from teachers where Name=?');
  Results results = await query.execute([name]);
  Row row = await results.first;
  return row[0];
}


Future<int> insert(var pool, String name, String topic) async {
  Query query = await pool.prepare('insert teachers (name, topic) values (?,?)');
  Results results = await query.execute([name, topic]);
  return results.insertId;
}


Future delete(var pool, int value) async {
  Query query = await pool.prepare('delete from teachers where idteachers=?)');
  Results results = await query.execute([value]);
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

  var trans = await pool.startTransaction();

  try {
    int id = await insert(pool, 'Tom', 'Programming');
    int person = await find(pool, 'Bob');
    await delete(pool, person);

    await trans.commit();
    print('Done!');
  } catch (e) {
    print(e.toString());
    await trans.rollback();
  } finally {
    await pool.closeConnectionsNow();
    exit(0);
  }
}