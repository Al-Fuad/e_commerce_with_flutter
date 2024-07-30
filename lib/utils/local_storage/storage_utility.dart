import 'package:get_storage/get_storage.dart';

class ELocalStorage{
  static final ELocalStorage _instance = ELocalStorage._internal();

  factory ELocalStorage(){
    return _instance;
  }

  ELocalStorage._internal();

  final _storage = GetStorage();

  Future<void> saveData<E>(String key, E value) async{
    await _storage.write(key, value);
  }

  E? readData<E>(String key){
    return _storage.read<E>(key);
  }

  Future<void> removeData(String key) async{
    await _storage.remove(key);
  }
  Future<void> clearAll() async{
    await _storage.erase();
  }
}