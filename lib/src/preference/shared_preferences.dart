import 'package:isar/isar.dart';
import 'package:meiyou_extensions_lib/utils.dart';
import 'package:nice_dart/nice_dart.dart' as nice_dart;
part 'shared_preferences.g.dart';

abstract class SharedPreferences {
  SharedPreferences();

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

extension on Map<String, dynamic> {
  SharedPreference toSourcePreference(int id) {
    final List<BoolPerference> bools = [];
    final List<DoublePerference> doubles = [];
    final List<IntPerference> ints = [];
    final List<StringPerference> strings = [];
    final List<StringListPerference> stringLists = [];
    for (var entry in entries) {
      final key = entry.key;
      final value = entry.value;
      if (value is bool) {
        bools.add(BoolPerference(key: key, value: value));
      } else if (value is double) {
        doubles.add(DoublePerference(key: key, value: value));
      } else if (value is int) {
        ints.add(IntPerference(key: key, value: value));
      } else if (value is String) {
        strings.add(StringPerference(key: key, value: value));
      } else if (value is List<String>) {
        stringLists.add(StringListPerference(key: key, value: value));
      }
    }
    return SharedPreference(
      id: id,
      bools: bools,
      doubles: doubles,
      ints: ints,
      strings: strings,
      stringLists: stringLists,
    );
  }
}

class SharedPreferencesImpl implements SharedPreferences {
  final int id;
  final Map<String, dynamic> _prefs;
  final Isar _isar;
  SharedPreferencesImpl(this._isar, SharedPreference preference)
      : id = preference.id,
        _prefs = preference.toMap();

  @override
  void clear() {
    _prefs.clear();
    _isar.writeTxnSync(() {
      _isar.sharedPreferences.put(_prefs.toSourcePreference(id));
    });
  }

  @override
  bool containsKey(String key) {
    return _prefs.keys.contains(key);
  }

  @override
  Set<String> getKeys() {
    return _prefs.keys.toSet();
  }

  @override
  bool? getBool(String key, [bool? defaultValue]) {
    return _prefs.getOrDefault(key, defaultValue);
  }

  @override
  double? getDouble(String key, [double? defaultValue]) {
    return _prefs.getOrDefault(key, defaultValue);
  }

  @override
  int? getInt(String key, [int? defaultValue]) {
    return _prefs.getOrDefault(key, defaultValue);
  }

  @override
  String? getString(String key, [String? defaultValue]) {
    return _prefs.getOrDefault(key, defaultValue);
  }

  @override
  List<String>? getStringList(String key, [List<String>? defaultValue]) {
    return _prefs.getOrDefault(key, defaultValue);
  }

  @override
  bool remove(String key) {
    final removed = _prefs.remove(key) != null;
    if (removed) {
      _isar.writeTxnSync(() {
        _isar.sharedPreferences.put(_prefs.toSourcePreference(id));
      });
    }
    return removed;
  }

  bool _set<T>(String key, T value) {
    return runCatching(() {
      _prefs[key] = value;
      _isar.writeTxnSync(() {
        _isar.sharedPreferences.put(_prefs.toSourcePreference(id));
      });
      return true;
    }).getOrDefault(false);
  }

  @override
  bool setBool(String key, bool value) {
    return _set<bool>(key, value);
  }

  @override
  bool setDouble(String key, double value) {
    return _set<double>(key, value);
  }

  @override
  bool setInt(String key, int value) {
    return _set<int>(key, value);
  }

  @override
  bool setString(String key, String value) {
    return _set<String>(key, value);
  }

  @override
  bool setStringList(String key, List<String> value) {
    return _set<List<String>>(key, value);
  }
}

@collection
class SharedPreference {
  final Id id;
  final List<BoolPerference> bools;
  final List<DoublePerference> doubles;
  final List<IntPerference> ints;
  final List<StringPerference> strings;
  final List<StringListPerference> stringLists;

  SharedPreference({
    this.id = Isar.autoIncrement,
    this.bools = const [],
    this.doubles = const [],
    this.ints = const [],
    this.strings = const [],
    this.stringLists = const [],
  });

  @override
  String toString() {
    return toMap().toString();
  }

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    for (var bool in bools) {
      map[bool.key] = bool.value;
    }
    for (var double in doubles) {
      map[double.key] = double.value;
    }
    for (var int in ints) {
      map[int.key] = int.value;
    }
    for (var string in strings) {
      map[string.key] = string.value;
    }
    for (var stringList in stringLists) {
      map[stringList.key] = stringList.value;
    }
    return map;
  }
}

abstract class Pref<T> implements Comparable<Pref> {
  final String key;
  T value;

  Pref({required this.key, required this.value});

  @override
  int compareTo(Pref other) {
    return key.compareTo(other.key);
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
