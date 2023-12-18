import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';

/// A class that provides utility functions for iterables.
class IterableUtils {
  /// Tries to get an element at a specific index in an iterable.
  ///
  /// If the index is out of bounds, it returns `null`.
  static E? tryElementAt<E>(Iterable<E> iterable, int index) =>
      iterable.tryElementAt(index);

  /// Maps an iterable to a list using a generator function.
  ///
  /// This function uses the `List.map` method to create the new list.
  static List<T> mapAsList<T, E>(
          Iterable<E> iterable, T Function(E it) toElement) =>
      iterable.mapAsList((it) => toElement(it));

  /// Maps an iterable to a list using a generator function that includes the index.
  ///
  /// This function uses the `List.map` method to create the new list.
  static List<E> mapWithIndex<E>(
          Iterable iterable, E Function(int index, dynamic it) toElement) =>
      iterable.mapWithIndex((index, it) => toElement(index, it));

  /// Tries to find the first element in an iterable that satisfies a given condition.
  ///
  /// If no such element is found, it returns the result of calling `orElse`, or `null` if `orElse` is not provided.
  static E? tryfirstWhere<E>(Iterable<E> iterable, bool Function(E it) test,
          {E Function()? orElse}) =>
      iterable.tryfirstWhere((it) => test(it), orElse: orElse);

  /// Returns a new iterable with all elements that satisfy the given predicate.
  ///
  /// If no such elements are found, it returns `null`.
  static Iterable<E>? tryWhere<E>(
          Iterable<E> iterable, bool Function(E element) test) =>
      iterable.tryWhere(test);
}
