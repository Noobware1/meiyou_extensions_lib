import 'package:meiyou_extensions_lib/src/preference/perference.dart';

abstract interface class PreferenceStore {
  Preference<String> getString(String key, [String defaultValue = ""]);

  Preference<int> getInt(String key, [int defaultValue = 0]);

  Preference<double> getDouble(String key, [double defaultValue = 0.0]);

  Preference<bool> getBool(String key, [bool defaultValue = false]);

  Preference<List<String>> getStringSet(String key,
      [List<String> defaultValue = const []]);

  Preference<T> getObject<T>(
    String key,
    T defaultValue,
    String Function(T) serializer,
    T Function(String) deserializer,
  );
}
