import 'package:get_storage/get_storage.dart';

class TestLocalStorage {
  static final TestLocalStorage _instance = TestLocalStorage._internal();

  factory TestLocalStorage() {
    return _instance;
  }

  TestLocalStorage._internal();

  final _storage = GetStorage();

  // generic to save data 
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // clear all data
  Future<void> clearAll(String key) async {
    await _storage.erase();
  }

}