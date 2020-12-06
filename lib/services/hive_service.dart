import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';

///used packages : hive and path_provider

class HiveService {
  //box is like a table (collection)
  final String _boxName = "box_name";
  //this bow will be loaded in the memory to read our data
  //and this why hive is fast beacause we read dirctly from the memory
  //and whene we write hive will be automaticly syncrone our data with the box 
  Box _box;
  
  
  ///single object used in this class
  static final instance = HiveService._();
 

  ///private constructor
  HiveService._();

  ///this method must be called whene open the app
  Future<void> initHive() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      Hive.init(dir.path);
      _box = await Hive.openBox(_boxName);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //save String in hive database
  Future<void> saveString(String key, value) async {
    try {
      await _box.put(key, value);
    } catch (e) {
      debugPrint("ERROR on save string locally : " + e.toString());
    }
  }

  //read string from hive database
  String getString(String key) {
    try {
      return _box.get(key, defaultValue: "");
    } catch (e) {
      debugPrint("ERROR on read string from local : " + e.toString());
    }
    return "";
  }
}
