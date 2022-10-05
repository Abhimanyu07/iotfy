import 'package:sqflite/sqflite.dart';
import 'package:untitled1/db/devicesdb.dart';

class dbfunctions{
  insertDeviceData()async{
    await deviceData.instance.insert({});
  }

  deleteDeviceData(int id)async{
    await deviceData.instance.delete(id);
  }

}