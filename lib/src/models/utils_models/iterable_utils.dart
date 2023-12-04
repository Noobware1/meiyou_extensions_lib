import 'package:meiyou_extenstions/src/extenstions/iterable.dart';

class IterableUtils {
  static E? tryElementAt<E>(Iterable<E> iterable, int index) =>
      iterable.tryElementAt(index);

  static List<T> mapAsList<T, E>(
          Iterable<E> iterable, T Function(E it) toElement) =>
      iterable.mapAsList((it) => toElement(it));

  static List<E> mapWithIndex<E>(
          Iterable iterable, E Function(int index, dynamic it) toElement) =>
      iterable.mapWithIndex((index, it) => toElement(index, it));

  static E? tryfirstWhere<E>(Iterable<E> iterable, bool Function(E it) test,
          {E Function()? orElse}) =>
      iterable.tryfirstWhere((it) => test(it), orElse: orElse);

  static Iterable<E>? tryWhere<E>(
          Iterable<E> iterable, bool Function(E element) test) =>
      iterable.tryWhere(test);
}
