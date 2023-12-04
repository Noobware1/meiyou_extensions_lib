import 'dart:typed_data';

typedef NullableIterable<T extends Object> = Iterable<T?>;

extension NullableListExtenstions<T> on List<T>? {
  bool get isNotNullAndEmpty => this != null && this!.isNotEmpty;
}

extension ListExtenstions<T extends Object> on List<T> {
  void addIfNotNull(T? value) {
    if (value != null) {
      add(value);
    }
  }

  void addAllIfNotNull(Iterable<T?>? value) {
    if (value == null) return;
    addAll(value.nonNulls);
  }

  void addAllRemoveNulls(NullableIterable<T> iterable) {
    addAll(iterable.nonNulls);
  }

  int? tryIndexOf(T? element, [int start = 0]) {
    if (element == null) return null;

    return indexOf(element, start);
  }

  bool containsIndex(int index) {
    return index >= 0 && index < length;
    // if (index <= length) {
    //   return true;
    // }
    // return false;
  }

  List<T> whereSafe(bool Function(T) fun) {
    try {
      return where(fun).toList();
    } catch (_) {
      return const [];
    }
  }

  List<T>? whereOrNull(bool Function(T) fun) {
    try {
      return where(fun).toList();
    } catch (_) {
      return null;
    }
  }

  Uint8List toUint8List() {
    assert(this is List<int>);
    return Uint8List.fromList(this as List<int>);
  }

  void fastMap<E>(List<E> data, T Function(E element) converter) {
    for (var element in data) {
      add(converter.call(element));
    }
  }
}
