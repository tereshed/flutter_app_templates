import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final storage = FlutterSecureStorage();

  SecureStorage();

  Future<String?> read(String key) async {
    String? value = await storage.read(key: key);
    return value;
  }

  Future<Map<String, String>> readAll() async {
    Map<String, String> allValues = await storage.readAll();
    return allValues;
  }

  void write(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  void delete(String key) async {
    await storage.delete(key: key);
  }

  void deleteAll() async {
    await storage.deleteAll();
  }
}
