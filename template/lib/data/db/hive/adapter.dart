import 'package:hive_flutter/hive_flutter.dart';
import 'package:template/data/db/hive/models/hive_user.dart';

class HiveAdapter {
  HiveAdapter();

  void init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserAdapter());
  }

  void registerAdapter(TypeAdapter adapter) {
    Hive.registerAdapter(adapter);
  }

  void close() {
    Hive.close();
  }

  Future<Box> openBox(String boxName) async {
    return await Hive.openBox(boxName);
  }

  Box getBox(String boxName) {
    return Hive.box(boxName);
  }
}
