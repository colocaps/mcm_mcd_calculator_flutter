import 'package:shared_preferences/shared_preferences.dart';
import 'package:core/src/abstractions/local_storage_manager.dart';

class LocalStorageManagerImpl implements LocalStorageManager {
  Future<SharedPreferences> _sharedPreferencesInstance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  @override
  Future<void> saveStringData(String key, String value) async {
    SharedPreferences prefs = await _sharedPreferencesInstance();
    prefs.setString(key, value);
  }

  @override
  Future<String?> getStringData(String key) async {
    SharedPreferences prefs = await _sharedPreferencesInstance();
    return prefs.getString(key);
  }

  @override
  Future<void> removeData(String key) async {
    SharedPreferences prefs = await _sharedPreferencesInstance();
    prefs.remove(key);
  }
}
