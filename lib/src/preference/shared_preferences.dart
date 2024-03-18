import 'dart:io';
import 'dart:convert';

import 'package:meiyou_extensions_lib/src/lib_overrides.dart';

typedef OnSharedPreferenceChangeListener = void Function(
    SharedPreferences sharedPreferences, String key);

class SharedPreferences {
  final String _dir;
  final String _name;
  final Map<String, dynamic> _preferencesMap = {};

  int _count = 0;
  // The _listeners is intentionally set to a fixed-length _GrowableList instead
  // of const [].
  //
  // The const [] creates an instance of _ImmutableList which would be
  // different from fixed-length _GrowableList used elsewhere in this class.
  // keeping runtime type the same during the lifetime of this class lets the
  // compiler to infer concrete type for this property, and thus improves
  // performance.
  static final List<OnSharedPreferenceChangeListener?> _emptyListeners =
      List<OnSharedPreferenceChangeListener?>.filled(0, null);
  List<OnSharedPreferenceChangeListener?> _listeners = _emptyListeners;

  int _notificationCallStackDepth = 0;
  int _reentrantlyRemovedListeners = 0;

  SharedPreferences([String? name])
      : _name = name ?? 'shared_preferences',
        _dir = ExtensionlibOverrides.sharedPreferencesDir {
    _loadPreferences();
  }

  void clear() {
    final keys = _preferencesMap.keys;
    _preferencesMap.clear();
    keys.forEach(_notifyListeners);
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
      _notifyListeners(key);
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
    return File(
      _dir + Platform.pathSeparator + '$_name.json',
    );
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
    _notifyListeners(key);
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

  bool delete() {
    final File localDataFile = _getPreferencesFile();
    if (localDataFile.existsSync()) {
      localDataFile.deleteSync();
      return true;
    }
    return false;
  }

  void addListener(OnSharedPreferenceChangeListener listener) {
    if (_count == _listeners.length) {
      if (_count == 0) {
        _listeners = List<OnSharedPreferenceChangeListener?>.filled(1, null);
      } else {
        final List<OnSharedPreferenceChangeListener?> newListeners =
            List<OnSharedPreferenceChangeListener?>.filled(
                _listeners.length * 2, null);
        for (int i = 0; i < _count; i++) {
          newListeners[i] = _listeners[i];
        }
        _listeners = newListeners;
      }
    }
    _listeners[_count++] = listener;
  }

  void removeListener(OnSharedPreferenceChangeListener listener) {
    for (int i = 0; i < _count; i++) {
      final OnSharedPreferenceChangeListener? listenerAtIndex = _listeners[i];
      if (listenerAtIndex == listener) {
        if (_notificationCallStackDepth > 0) {
          _listeners[i] = null;
          _reentrantlyRemovedListeners++;
        } else {
          _removeAt(i);
        }
        break;
      }
    }
  }

  void _removeAt(int index) {
    _count -= 1;
    if (_count * 2 <= _listeners.length) {
      final List<OnSharedPreferenceChangeListener?> newListeners =
          List<OnSharedPreferenceChangeListener?>.filled(_count, null);

      // Listeners before the index are at the same place.
      for (int i = 0; i < index; i++) {
        newListeners[i] = _listeners[i];
      }

      // Listeners after the index move towards the start of the list.
      for (int i = index; i < _count; i++) {
        newListeners[i] = _listeners[i + 1];
      }

      _listeners = newListeners;
    } else {
      for (int i = index; i < _count; i++) {
        _listeners[i] = _listeners[i + 1];
      }
      _listeners[_count] = null;
    }
  }

  void _notifyListeners(String key) {
    if (_count == 0 || _preferencesMap.isEmpty) {
      return;
    }

    // To make sure that listeners removed during this iteration are not called,
    // we set them to null, but we don't shrink the list right away.
    // By doing this, we can continue to iterate on our list until it reaches
    // the last listener added before the call to this method.

    // To allow potential listeners to recursively call notifyListener, we track
    // the number of times this method is called in _notificationCallStackDepth.
    // Once every recursive iteration is finished (i.e. when _notificationCallStackDepth == 0),
    // we can safely shrink our list so that it will only contain not null
    // listeners.

    _notificationCallStackDepth++;

    final int end = _count;
    for (int i = 0; i < end; i++) {
      try {
        _listeners[i]?.call(this, key);
      } catch (_) {}
    }

    _notificationCallStackDepth--;

    if (_notificationCallStackDepth == 0 && _reentrantlyRemovedListeners > 0) {
      // We really remove the listeners when all notifications are done.
      final int newLength = _count - _reentrantlyRemovedListeners;
      if (newLength * 2 <= _listeners.length) {
        // As in _removeAt, we only shrink the list when the real number of
        // listeners is half the length of our list.
        final List<OnSharedPreferenceChangeListener?> newListeners =
            List<OnSharedPreferenceChangeListener?>.filled(newLength, null);

        int newIndex = 0;
        for (int i = 0; i < _count; i++) {
          final OnSharedPreferenceChangeListener? listener = _listeners[i];
          if (listener != null) {
            newListeners[newIndex++] = listener;
          }
        }

        _listeners = newListeners;
      } else {
        // Otherwise we put all the null references at the end.
        for (int i = 0; i < newLength; i += 1) {
          if (_listeners[i] == null) {
            // We swap this item with the next not null item.
            int swapIndex = i + 1;
            while (_listeners[swapIndex] == null) {
              swapIndex += 1;
            }
            _listeners[i] = _listeners[swapIndex];
            _listeners[swapIndex] = null;
          }
        }
      }

      _reentrantlyRemovedListeners = 0;
      _count = newLength;
    }
  }
}
