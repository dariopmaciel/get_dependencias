import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService {
  late final SharedPreferences _sharedPreferences;

  Future<StorageService> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setString(
        'service', 'String adicionada de dentro de um service');

    return this;
  }

  T getValue<T>(String key) => _sharedPreferences.get(key) as T;
}
