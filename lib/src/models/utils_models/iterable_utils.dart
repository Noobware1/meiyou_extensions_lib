import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:meiyou_extensions_lib/src/extenstions/object.dart';

/// A class that provides utility functions for iterables.
class IterableUtils {
  // Maps each element of the given iterable to a new element with an index using the provided generator function.
  ///
  /// * `iterable`: A iterable of elements to map.
  /// * `toElement`: A function that takes an index and an element, and returns a new element.
  ///
  /// Returns a new iterable where each element is the result of calling the `toElement` function on the corresponding element and index in the original iterable.
  static Iterable<B> mapIndexed<A, B>(
      Iterable<A> iterable, B Function(int, A) toElement) {
    return iterable.mapWithIndex(toElement);
  }

  /// Maps each non-null element of the given iterable to a new element using the provided generator function.
  ///
  /// * `iterable`: A iterable of nullable elements to map.
  /// * `toElement`: A function that takes a non-null element and returns a new element.
  ///
  /// Returns a new iterable where each non-null element is the result of calling the `toElement` function on the corresponding non-null element in the original iterable.
  static Iterable<B> mapNotNull<A, B>(
      Iterable<A?> iterable, B Function(A) toElement) {
    return [
      for (var e in iterable)
        if (e.isNotNull) toElement(e as A)
    ];
  }

  /// Maps each element of the given nullable iterable to a new element using the provided generator function.
  ///
  /// * `iterable`: A nullable iterable of elements to map.
  /// * `toElement`: A function that takes an element and returns a new element.
  ///
  /// Returns a new iterable where each element is the result of calling the `toElement` function on the corresponding element in the original nullable iterable.
  static Iterable<B>? mapNullable<A, B>(
      Iterable<A>? iterable, B Function(A) toElement) {
    return iterable == null
        ? null
        : [
            for (var e in iterable)
              if (e.isNotNull) toElement(e)
          ];
  }

  /// Maps each element of the given iterable to a new element using the provided generator function only when a specified condition is met.
  ///
  /// * `iterable`: A iterable of elements to map.
  /// * `toElement`: A function that takes an element and returns a new element.
  /// * `test`: A function that takes an element and returns a boolean indicating whether to apply the mapping.
  ///
  /// Returns a new iterable where each element is the result of calling the `toElement` function on the corresponding element in the original iterable only if the `test` condition is true.
  static Iterable<B> mapWhen<A, B>(
    Iterable<A> iterable,
    B Function(A) toElement,
    bool Function(A) test,
  ) {
    return [
      for (var e in iterable)
        if (test(e)) toElement(e)
    ];
  }

  /// Returns a new iterable containing only non-null elements from the given iterable.
  ///
  /// * `iterable`: A iterable of nullable elements.
  ///
  /// Returns a new iterable containing only the non-null elements from the original iterable.
  static Iterable<A> whereNotNull<A>(Iterable<A?> iterable) {
    return [
      for (var e in iterable)
        if (e.isNotNull) e!
    ];
  }

  /// Returns the first element that satisfies the specified condition, or `null` if no such element is found.
  ///
  /// * `iterable`: A iterable of elements to search.
  /// * `test`: A function that takes an element and returns a boolean indicating whether it satisfies a condition.
  /// * `orElse`: A function that returns a default value if no element is found (optional).
  ///
  /// Returns the first element in the iterable that satisfies the `test` condition, or `null` if no such element is found. If provided, `orElse` is invoked and its result is returned if no matching element is found.
  static A? firstWhereOrNull<A>(Iterable<A> iterable, bool Function(A) test,
      {A Function()? orElse}) {
    return iterable.tryfirstWhere((it) => test(it), orElse: orElse);
  }

  /// Flattens a iterable of iterables into a single iterable.
  ///
  /// * `iterable`: A iterable of iterables to flatten.
  ///
  /// Returns a new iterable that is a flattened version of the original iterable of iterables.
  static Iterable<A> faltten<A>(Iterable<Iterable<A>> iterable) {
    return iterable.faltten();
  }
}
