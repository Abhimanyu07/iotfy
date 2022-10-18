import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class deviceData{
  // device data
  static const _dbname = 'devicedata.db';
  static const _dbVersion = 1;
  static const tableName = 'mydevices';
  static const deviceId = 'did';
  static const deviceName = 'dname';
  static const devicePin = 'dpin';
  static const deviceIp = 'dip';
  static const isURL = 'disURL';
  static const deviceURL = 'dURL';

  deviceData._privateConstructor();
  static final deviceData instance = deviceData._privateConstructor();

  static Database? _database;
  Future<Database?> get database async{
    if(_database!=null){
      return _database;
    }
    _database = await _initiateDatabase();
    return _database;

  }

  _initiateDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path,_dbname);
    return await openDatabase(path, version: _dbVersion,onCreate: _onCreate);

  }


  Future<dynamic>_onCreate(Database db, int version) async {
    db.execute(
        '''
      CREATE TABLE $tableName (
      $deviceId INTEGER PRIMARY KEY,
      $deviceName TEXT NOT NULL,
      $devicePin INTEGER NOT NULL,
      $deviceIp TEXT,
      $isURL INTEGER,
      $deviceURL TEXT)
      '''
    );

  }
  Future<int> delete(int id)async{
    Database? db = await instance.database;
    return await db!.delete(tableName,where:'$deviceId = ?',whereArgs:[id]);
  }

  Future<int> insert(Map<String,dynamic> row)async{
    Database? db = await instance.database;
    return await db!.insert(tableName, row);
  }
  Future<List<Map<String,dynamic>>> queryAll ()async{
    Database? db = await instance.database;
    return await db!.query(tableName);
  }


  Future<int>update(Map<String,dynamic> row,String tableName) async{
    Database? db = await instance.database;
    int id = row[deviceId];
    return await db!.update(tableName, row, where: '$deviceId = ?', whereArgs: [id]);
  }


}