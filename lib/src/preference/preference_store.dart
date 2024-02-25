import 'preference.dart';

typedef Serializer<T> = String Function(T);
typedef Deserializer<T> = T Function(String);

abstract class PreferenceStore {
  Iterable<String> getKeys();

  Preference<String> getString(String key, String defaultValue);

  Preference<int> getInt(String key, int defaultValue);

  Preference<double> getDouble(String key, double defaultValue);

  Preference<bool> getBool(String key, bool defaultValue);

  Preference<List<String>> getStringList(String key, List<String> defaultValue);

  Preference<T> getObject<T>(
    String key,
    T defaultValue,
    Serializer<T> serializer,
    Deserializer<T> deserializer,
  );

  Map<String, dynamic> getAll();
}
