import "dart:async";
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import '../models/todo.dart';

class DBHelper {
  static Database _db;
  static const String ID = 'id';
  static const String TITLE = 'title';
  static const String DESCRIPTION = 'description';
  static const String TIME = 'time';
  static const String DATE = 'date';
  static const String TABLE = 'todolist';
  static const String DB_NAME = 'todos.db';

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDB();
    return _db;
  }

  initDB() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $TABLE($ID INTEGER PRIMARY KEY, $TITLE TEXT, $DESCRIPTION TEXT, $TIME TEXT, $DATE TEXT)");
  }

  Future<ToDoInfo> save(ToDoInfo toDoInfo) async {
    var dbClient = await db;
    toDoInfo.id = await dbClient.insert(TABLE, toDoInfo.toMap());
  }
}
