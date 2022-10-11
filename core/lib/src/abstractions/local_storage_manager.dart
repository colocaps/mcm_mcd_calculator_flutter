abstract class LocalStorageManager {
  Future<void> saveStringData(String key, String value);
  Future<String?> getStringData(String key);
  Future<void> removeData(String key);
}
