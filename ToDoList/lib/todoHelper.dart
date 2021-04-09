import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

import 'models/todo.dart';

final String tableName = 'todos';
final String columnId = 'id';
final String columnTitle = 'title';
final String columnDes = 'description';
final String columnTime = 'time';
final String columnDate = 'date';

class ToDoHelper {
  static Database _database;
  static ToDoHelper _todoHelper;

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    var dir = await getDatabasesPath();
    var path = dir + "todoapp.db";

    var databse = await openDatabase(path, version: 1, onCreate: (db, version) {
      db.execute('''
        create table $tableName(
          $columnId intrger primary key autoincrement,
          $columnTitle text not null,
          $columnDes text ,
          $columnTime text ,
          $columnDate text 
        )
      ''');
    });
    return databse;
  }

  void insertTodo(ToDoInfo todoInfo) {}
}
