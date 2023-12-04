import 'dart:async';

import 'package:meiyou_extenstions/src/utils/try_catch.dart';

extension IterableExtenstions<E> on Iterable<E> {
  E? tryElementAt(index) => trySync(() => elementAt(index));

  List<T> mapAsList<T>(T Function(E it) toElement) =>
      [for (var value in this) toElement(value)];

  List<T> mapWithIndex<T>(T Function(int index, E it) toElement) {
    return List.generate(
        length, (index) => toElement.call(index, elementAt(index)),
        growable: false);
  }

  E? tryfirstWhere(bool Function(E) test, {E Function()? orElse}) {
    try {
      return firstWhere(test, orElse: orElse);
    } catch (_, __) {
      // print(_);
      // print(__);
      return null;
    }
  }

  Iterable<E>? tryWhere(bool Function(E element) test) {
    try {
      return where(test);
    } catch (_) {
      return null;
    }
  }
}

extension NonNull<E> on Iterable<E?> {
  List<E> get nonNullsList => [
        for (var value in this)
          if (value != null) value
      ];
}

extension Faltten<E> on List<List<E>> {
  List<E> faltten() {
    return [for (Iterable<E> l in this) ...l];
  }
}

extension IterableFutureUtils<E> on Iterable<Future<E>> {
  Future<List<E?>> get tryWait {
    var results = [for (var f in this) _FutureResult<E>(f)];
    if (results.isEmpty) return Future<List<E>>.value(<E>[]);
    final c = Completer<List<E?>>.sync();
    _FutureResult._waitAll(results, () {
      c.complete([for (var r in results) r.value]);
    });
    return c.future;
  }
}

//copied from dart future extenstions
class _FutureResult<T> {
  // Consider integrating directly into `_Future` as a `_FutureListener`
  // to avoid creating as many function tear-offs.

  /// The value or `null`.
  ///
  /// Set when the future completes with a value.
  T? valueOrNull;

  void Function(int errors) onReady = _noop;

  _FutureResult(Future<T> future) {
    _resolveFuture(future, _onValue, _onError);
  }

  /// The value.
  ///
  /// Should only be used when the future is known to have completed with
  /// a value.
  T? get value => valueOrNull;

  void _onValue(T value) {
    valueOrNull = value;
    onReady(0);
  }

  void _onError(Object error, StackTrace stack) {
    valueOrNull = null;
    onReady(1);
  }

  /// Waits for a number of [_FutureResult]s to all have completed.
  ///
  /// List must not be empty.
  static void _waitAll(List<_FutureResult> results, void Function() whenReady) {
    assert(results.isNotEmpty);
    var ready = 0;
    void onReady(int error) {
      if (++ready == results.length) {
        whenReady();
      }
    }

    for (var r in results) {
      r.onReady = onReady;
    }
  }

  static void _noop(_) {}
}

void _resolveFuture<T>(Future<T> future, void Function(T value) onData,
    void Function(Object error, StackTrace stackTrace) onError) async {
  try {
    onData.call(await future);
  } catch (e, s) {
    return onError.call(e, s);
  }
}
