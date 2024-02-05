import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:nice_dart/nice_dart.dart' as nice_dart;
part 'shared_preferences.g.dart';

abstract class SharedPreferences {
  void clear();

  bool containsKey(String key);

  Set<String> getKeys();

  bool? getBool(String key, [bool? defaultValue]);

  double? getDouble(String key, [double? defaultValue]);

  int? getInt(String key, [int? defaultValue]);

  String? getString(String key, [String? defaultValue]);

  List<String>? getStringList(String key, [List<String>? defaultValue]);

  bool remove(String key);

  bool setBool(String key, bool value);

  bool setDouble(String key, double value);

  bool setInt(String key, int value);

  bool setString(String key, String value);

  bool setStringList(String key, List<String> value);
}

class SharedPreferencesImpl implements SharedPreferences {
  final SourcePreference _preference;
  final Isar _isar;
  SharedPreferencesImpl(this._isar, SourcePreference preference)
      : _preference = SourcePreference(
          id: preference.id,
          keys: [...preference.keys],
          bools: [...preference.bools],
          doubles: [...preference.doubles],
          ints: [...preference.ints],
          strings: [...preference.strings],
          stringLists: [...preference.stringLists],
        );

  @override
  void clear() {
    _preference.bools.clear();
    _preference.doubles.clear();
    _preference.ints.clear();
    _preference.strings.clear();
    _preference.stringLists.clear();

    _isar.writeTxnSync(() {
      _isar.sourcePreferences.putSync(_preference);
    });
  }

  @override
  bool containsKey(String key) {
    final prefs = <String>[
      BoolPerference(key: key).toString(),
      DoublePerference(key: key).toString(),
      IntPerference(key: key).toString(),
      StringPerference(key: key).toString(),
      StringListPerference(key: key).toString(),
    ];
    for (var pref in prefs) {
      if (_preference.keys.contains(pref)) {
        return true;
      }
    }
    return false;
  }

  @override
  Set<String> getKeys() {
    return _preference.keys.map((e) {
      return e.substringAfter('_');
    }).toSet();
  }

  @override
  bool? getBool(String key, [bool? defaultValue]) {
    return _preference.getPref(0, key) ?? defaultValue;
  }

  @override
  double? getDouble(String key, [double? defaultValue]) {
    return _preference.getPref(1, key) ?? defaultValue;
  }

  @override
  int? getInt(String key, [int? defaultValue]) {
    return _preference.getPref(2, key) ?? defaultValue;
  }

  @override
  String? getString(String key, [String? defaultValue]) {
    return _preference.getPref(3, key) ?? defaultValue;
  }

  @override
  List<String>? getStringList(String key, [List<String>? defaultValue]) {
    return _preference.getPref(4, key) ?? defaultValue;
  }

  @override
  bool remove(String key) {
    final prefs = <String>[
      BoolPerference(key: key).toString(),
      DoublePerference(key: key).toString(),
      IntPerference(key: key).toString(),
      StringPerference(key: key).toString(),
      StringListPerference(key: key).toString(),
    ];
    for (var pref in prefs) {
      if (_preference.keys.contains(pref)) {
        _preference.keys.remove(pref);
        switch (pref.substringBefore('_')) {
          case 'bool':
            _preference.bools.removeByBinarySearch(BoolPerference(key: key));
            break;
          case 'double':
            _preference.doubles
                .removeByBinarySearch(DoublePerference(key: key));
            break;
          case 'int':
            _preference.ints.removeByBinarySearch(IntPerference(key: key));
            break;
          case 'string':
            _preference.strings
                .removeByBinarySearch(StringPerference(key: key));
            break;
          case 'stringList':
            _preference.stringLists
                .removeByBinarySearch(StringListPerference(key: key));
            break;
          default:
            break;
        }
        _isar.writeTxnSync(() {
          _isar.sourcePreferences.putSync(_preference);
        });
        return true;
      }
    }
    return false;
  }

  bool _set<T>(int type, String key, T value) {
    return nice_dart.runCatching(() {
      _checkKey(key, type);
      _preference.setPref(type, key, value);
      final id = _isar.writeTxnSync(() {
        return _isar.sourcePreferences.putSync(_preference);
      });
      return id == _preference.id;
    }).getOrElse(
      (e) {
        print(e);
        return false;
      },
    );
  }

  @override
  bool setBool(String key, bool value) {
    return _set<bool>(0, key, value);
  }

  @override
  bool setDouble(String key, double value) {
    return _set<double>(1, key, value);
  }

  @override
  bool setInt(String key, int value) {
    return _set<int>(2, key, value);
  }

  @override
  bool setString(String key, String value) {
    return _set<String>(3, key, value);
  }

  @override
  bool setStringList(String key, List<String> value) {
    return _set<List<String>>(4, key, value);
  }

  void _checkKey(String key, int excludeType) {
    final prefs = <Pref>[
      BoolPerference(key: key),
      DoublePerference(key: key),
      IntPerference(key: key),
      StringPerference(key: key),
      StringListPerference(key: key),
    ]..removeAt(excludeType);

    for (var pref in prefs) {
      if (_preference.keys.contains(pref.toString())) {
        throw Exception('$key already exists for $pref');
      }
    }
  }
}

@collection
class SourcePreference {
  final Id id;
  final List<String> keys;
  final List<BoolPerference> bools;
  final List<DoublePerference> doubles;
  final List<IntPerference> ints;
  final List<StringPerference> strings;
  final List<StringListPerference> stringLists;

  SourcePreference({
    this.id = Isar.autoIncrement,
    this.keys = const [],
    this.bools = const [],
    this.doubles = const [],
    this.ints = const [],
    this.strings = const [],
    this.stringLists = const [],
  });

  T? getPref<T>(int type, String key) {
    switch (type) {
      case 0:
        return bools.getValueByBinarySearch<BoolPerference, T>(
            BoolPerference(key: key));
      case 1:
        return doubles.getValueByBinarySearch<DoublePerference, T>(
            DoublePerference(key: key));
      case 2:
        return ints
            .getValueByBinarySearch<IntPerference, T>(IntPerference(key: key));
      case 3:
        return strings.getValueByBinarySearch<StringPerference, T>(
            StringPerference(key: key));
      case 4:
        return stringLists.getValueByBinarySearch<StringListPerference, T>(
            StringListPerference(key: key));
      default:
        return null;
    }
  }

  void setPref<T>(int type, String key, T value) {
    switch (type) {
      case 0:
        return _setPref<BoolPerference>(
            bools, BoolPerference(key: key, value: value as bool));
      case 1:
        return _setPref<DoublePerference>(
            doubles, DoublePerference(key: key, value: value as double));
      case 2:
        return _setPref<IntPerference>(
            ints, IntPerference(key: key, value: value as int));
      case 3:
        return _setPref<StringPerference>(
            strings, StringPerference(key: key, value: value as String));
      case 4:
        return _setPref<StringListPerference>(stringLists,
            StringListPerference(key: key, value: value as List<String>));
      default:
        return;
    }
  }

  void _setPref<T extends Pref>(List<T> prefs, T pref) {
    final index = prefs.binarySearch(pref);
    if (index != -1) {
      prefs[index] = pref;
    } else {
      keys.add(pref.toString());
      prefs.add(pref);
    }
  }

  @override
  String toString() {
    List<String> listToString(List<Pref> l) {
      return l.map((e) => 'Pref(${e.key}: ${e.value})').toList();
    }

    return 'SourcePreference(id: $id, keys: $keys, bools: ${listToString(bools)}, doubles: ${listToString(doubles)}, ints: ${listToString(ints)}, strings: ${listToString(strings)}, stringLists: ${listToString(stringLists)})';
  }
}

extension on List<Pref> {
  T? getValueByBinarySearch<P extends Pref, T>(P pref) {
    final index = nice_dart.binarySearch(this, pref);
    if (index != -1) {
      return this[index].value as T;
    }
    return null;
  }

  int binarySearch(Pref pref) {
    return nice_dart.binarySearch(this, pref);
  }

  void removeByBinarySearch(Pref pref) {
    final index = nice_dart.binarySearch(this, pref);
    if (index != -1) {
      removeAt(index);
    }
  }
  // Pref? getPrefByBinarySearch(Pref pref) {
  //   final index = nice_dart.binarySearch(this, pref);
  //   if (index != -1) {
  //     return this[index];
  //   }
  //   return null;
  // }
}

abstract class Pref<T> implements Comparable<Pref> {
  final String key;
  T value;

  Pref({required this.key, required this.value});

  @override
  int compareTo(Pref other) {
    return key.compareTo(other.key);
  }

  static Pref? getInstance(int type, [String key = '']) {
    switch (type) {
      case 0:
        return BoolPerference(key: key);
      case 1:
        return DoublePerference(key: key);
      case 2:
        return IntPerference(key: key);
      case 3:
        return StringPerference(key: key);
      case 4:
        return StringListPerference(key: key);
      default:
        return null;
    }
  }
}

@embedded
class BoolPerference extends Pref<bool> {
  BoolPerference({
    String key = '',
    bool value = false,
  }) : super(key: key, value: value);

  @override
  String toString() {
    return 'bool_$key';
  }
}

@embedded
class DoublePerference extends Pref<double> {
  DoublePerference({
    String key = '',
    double value = 0.0,
  }) : super(key: key, value: value);

  @override
  String toString() {
    return 'double_$key';
  }
}

@embedded
class IntPerference extends Pref<int> {
  IntPerference({
    String key = '',
    int value = 0,
  }) : super(key: key, value: value);

  @override
  String toString() {
    return 'int_$key';
  }
}

@embedded
class StringPerference extends Pref<String> {
  StringPerference({
    String key = '',
    String value = '',
  }) : super(key: key, value: value);

  @override
  String toString() {
    return 'string_$key';
  }
}

@embedded
class StringListPerference extends Pref<List<String>> {
  StringListPerference({
    String key = '',
    List<String> value = const [],
  }) : super(key: key, value: value);

  @override
  String toString() {
    return 'stringList_$key';
  }
}
