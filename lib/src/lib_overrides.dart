import 'dart:io';

import 'package:meiyou_extensions_lib/network.dart';
import 'package:meiyou_extensions_lib/preference.dart';

class ExtensionlibOverrides {
  static String sharedPreferencesDir = Directory.current.path;

  static NetworkHelper networkHelper = NetworkHelper(MockNetworkPreferences());
}

class MockNetworkPreferences implements NetworkPreferences {
  @override
  Preference<String> defaultUserAgent() => MockPreference('default_useragent',
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/121.0');

  @override
  Preference<int> dohProvider() => MockPreference('doh', -1);

  @override
  Preference<bool> verboseLogging() => MockPreference('verbose_logging', false);
}

class MockPreference<T> implements Preference<T> {
  final String _key;
  final T _value;

  MockPreference(this._key, this._value);

  @override
  T defaultValue() => _value;

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  T get() => _value;

  @override
  bool isSet() {
    return false;
  }

  @override
  String key() {
    return _key;
  }

  @override
  void set(value) {
    // TODO: implement set
  }

  @override
  Stream<T> changes() {
    // TODO: implement changes
    throw UnimplementedError();
  }
}
