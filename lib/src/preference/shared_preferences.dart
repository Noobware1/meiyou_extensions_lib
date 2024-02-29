import 'dart:io';

import 'dart:convert';

String? _sharedPreferencesDirectory;

class SharedPreferences {
  final String _name;

  final Map<String, dynamic> _preferencesMap = {};

  SharedPreferences([String? name]) : _name = name ?? 'shared_preferences' {
    _loadPreferences();
  }

  // this will allow more of syncronous usage
  // must be called before any usage of SharedPreferences
  static void initialize(String directory) {
    _sharedPreferencesDirectory = directory;
    return;
  }

  void clear() {
    _preferencesMap.clear();
    _savePreferences();
  }

  bool containsKey(String key) {
    return _preferencesMap.containsKey(key);
  }

  bool? getBool(String key, [bool? defaultValue]) {
    return _get<bool>(key, defaultValue);
  }

  double? getDouble(String key, [double? defaultValue]) {
    return _get<double>(key, defaultValue);
  }

  int? getInt(String key, [int? defaultValue]) {
    return _get<int>(key, defaultValue);
  }

  Set<String> getKeys() {
    return _preferencesMap.keys.toSet();
  }

  String? getString(String key, [String? defaultValue]) {
    return _get<String>(key, defaultValue);
  }

  List<String>? getStringList(String key, [List<String>? defaultValue]) {
    return _preferencesMap[key] as List<String>? ?? defaultValue;
  }

  bool remove(String key) {
    try {
      _preferencesMap.remove(key);
      return _savePreferences();
    } catch (_) {
      return false;
    }
  }

  bool setBool(String key, bool value) {
    return _writePreferences(key, value);
  }

  bool setDouble(String key, double value) {
    return _writePreferences(key, value);
  }

  bool setInt(String key, int value) {
    return _writePreferences(key, value);
  }

  bool setString(String key, String value) {
    return _writePreferences(key, value);
  }

  bool setStringList(String key, List<String> value) {
    return _writePreferences(key, value);
  }

  File _getPreferencesFile() {
    if (_sharedPreferencesDirectory == null) {
      throw Exception('SharedPreferences has not been initialize');
    }
    // ignore: prefer_interpolation_to_compose_strings
    return File((_sharedPreferencesDirectory! +
        Platform.pathSeparator +
        '$_name.json'));
  }

  T? _get<T>(String key, T? defaultValue) {
    try {
      return _preferencesMap[key] as T? ?? defaultValue;
    } catch (_) {
      return defaultValue;
    }
  }

  bool _writePreferences(String key, Object value) {
    _preferencesMap[key] = value;
    return _savePreferences();
  }

  bool _savePreferences() {
    try {
      final File localDataFile = _getPreferencesFile();
      if (!localDataFile.existsSync()) {
        localDataFile.createSync(recursive: true);
      }
      final String stringMap = json.encode(_preferencesMap);
      localDataFile.writeAsStringSync(stringMap);
      return true;
    } catch (_) {
      return false;
    }
  }

  void _loadPreferences() {
    try {
      final File localDataFile = _getPreferencesFile();
      if (localDataFile.existsSync()) {
        final String stringMap = localDataFile.readAsStringSync();
        _preferencesMap.addAll(json.decode(stringMap));
      }
    } catch (_) {
      // ignore
    }
  }

  Map<String, dynamic> getAll() => _preferencesMap;
}
