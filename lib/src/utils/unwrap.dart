import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';

E unwrapValue<E>(dynamic value) {
  return (value is $Value ? value.$value : value) as E;
}

Iterable<E> unwrapIterable<E>(Iterable iterable) {
  return iterable.map((e) => unwrapValue<E>(e));
}

Map<K, V> unwrapMap<K, V>(Map map) {
  return map.map(
      (key, value) => MapEntry(unwrapValue<K>(key), unwrapValue<V>(value)));
}

List<E> unwrapList<E>(List list) {
  return list.mapAsList((it) => unwrapValue<E>(it)).nonNullsList;
}
