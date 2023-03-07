import 'package:hive/hive.dart';


@HiveType(typeId: 0)
class Device extends HiveObject{
  @HiveField(0)
  late String device_name;

  @HiveField(1)
  late int device_type;

  // @HiveField(2)
  // late String
}
// create a room list and then from that we point to all device data