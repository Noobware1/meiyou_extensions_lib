import 'package:dart_eval/dart_eval_bridge.dart';

extension $ValueExtenions on $Value? {
  Map<K, V>? unwrapMap<K, V>() {
    return (this?.$reified as Map?)?.cast<K, V>();
  }

  List<E>? unwrapList<E>() {
    return (this?.$reified as List?)?.cast<E>();
  }

  Iterable<E>? unwrapIterable<E>() {
    return (this?.$reified as Iterable?)?.cast<E>();
  }
}
