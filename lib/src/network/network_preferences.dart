import 'package:meiyou_extensions_lib/src/preference/preference.dart';
import 'package:meiyou_extensions_lib/src/preference/preference_store.dart';

class NetworkPreferences {
  NetworkPreferences(PreferenceStore preferenceStore, bool verboseLogging)
      : _verboseLogging = verboseLogging,
        _preferenceStore = preferenceStore;

  final bool _verboseLogging;
  final PreferenceStore _preferenceStore;

  Preference<bool> verboseLogging() {
    return _preferenceStore.getBool("verbose_logging", _verboseLogging);
  }

  Preference<int> dohProvider() {
    return _preferenceStore.getInt("doh_provider", -1);
  }

  Preference<String> defaultUserAgent() {
    return _preferenceStore.getString(
      "default_user_agent",
      "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/121.0",
    );
  }
}
