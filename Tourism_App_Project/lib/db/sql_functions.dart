import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //create database
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('userdata', version: 1,
        onCreate: (sql.Database db, int version) async {
      await createTable(db);
    });
  }

  //create Table
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE user(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       name TEXT,
       email TEXT,
       password TEXT
      )""");
  }

  static Future<int> AddNewUser(
      String name, String email, String password) async {
    final db = await SQLHelper.OpenDb();
    final data = {'name': name, 'email': email, 'password': password};
    final id = db.insert('user', data);
    return id;
  }

  static Future<List<Map>> userFound(String uname, String eemail) async {
    final db = await SQLHelper.OpenDb();
    final data = await db.rawQuery(
        "SELECT * FROM user WHERE name= '$uname' AND email = '$eemail' ");
    if (data.isNotEmpty) {
      return data;
    }
    return data;
  }

  static Future<List<Map>> CheckLogin(String name, String password) async {
    final db = await SQLHelper.OpenDb();
    final data = await db.rawQuery(
        "SELECT * FROM user WHERE name= '$name' AND password = '$password'");
    if (data.isNotEmpty) {
      return data;
    }
    return data;
  }
}
