import 'package:bootz_test/data/user_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'user.db');
  return openDatabase(path, version: 1, onCreate: (db, version) {
    db.execute(UserDao.tableSql);
  });
}


