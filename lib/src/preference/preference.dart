import 'dart:async';

abstract class Preference<T> {
  String key();

  T get();

  void set(T value);

  T getAndSet(T value);

  bool isSet();

  void delete();

  T defaultValue();

  Stream<T> changes();

  /// A preference that should not be exposed in places like backups without user consent.
  static bool isPrivate(String key) {
    return key.startsWith(_privateStatePrefix);
  }

  static String privateKey(String key) {
    return '$_privateStatePrefix$key';
  }

  /// A preference used for internal app state that isn't really a user preference
  /// and therefore should not be in places like backups.
  static bool isAppState(String key) {
    return key.startsWith(_appStatePrefix);
  }

  static String appStateKey(String key) {
    return '$_appStatePrefix$key';
  }

  static const _privateStatePrefix = "__PRIVATE_";
  static const _appStatePrefix = "__APP_STATE_";
}
