import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';

class NetworkPreferences {
  NetworkPreferences(SharedPreferences preferences, bool verboseLogging)
      : _verboseLogging = verboseLogging,
        _preferences = preferences;

  final bool _verboseLogging;
  final SharedPreferences _preferences;

  bool verboseLogging() {
    return _preferences.getBool("verbose_logging", _verboseLogging)!;
  }

  int dohProvider() {
    return _preferences.getInt("doh_provider", -1)!;
  }

  String defaultUserAgent() {
    return _preferences.getString(
      "default_user_agent",
      "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/121.0",
    )!;
  }
}
