// ignore_for_file: constant_identifier_names

abstract interface class Preference<T> {
  String key();

  T get();

  void set(T value);

  bool isSet();

  void delete();

  T defaultValue();

  bool isPrivate(String key) {
    return key.startsWith(_PRIVATE_PREFIX);
  }

  String privateKey(String key) {
    return "$_PRIVATE_PREFIX$key";
  }

  static const _APP_STATE_PREFIX = "__APP_STATE_";
  static const _PRIVATE_PREFIX = "__PRIVATE_";

  /// A preference used for internal app state that isn't really a user preference
  /// and therefore should not be in places like backups.
  bool isAppState(String key) {
    return key.startsWith(_APP_STATE_PREFIX);
  }

  String appStateKey(String key) {
    return "$_APP_STATE_PREFIX$key";
  }
}

// inline fun <reified T, R : T> Preference<T>.getAndSet(crossinline block: (T) -> R) = set(
//     block(get()),
// )

// operator fun <T> Preference<Set<T>>.plusAssign(item: T) {
//     set(get() + item)
// }

// operator fun <T> Preference<Set<T>>.minusAssign(item: T) {
//     set(get() - item)
// }

// fun Preference<Boolean>.toggle(): Boolean {
//     set(!get())
//     return get()