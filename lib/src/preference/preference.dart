abstract class Preference<T> {
  String key();

  T get();

  void set(T value);

  bool isSet();

  void delete();

  T defaultValue();
}
