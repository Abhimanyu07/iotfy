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

  deviceData._privateConstructor();
  static final deviceData instance = deviceData._privateConstructor();

  static deviceData? _database;
  Future<deviceData?> get database async{
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
      $deviceName TEXT NOT NULL)
      '''
    );

  }
}