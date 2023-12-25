import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:meiyou_extensions_lib/src/extenstions/object.dart';
import 'package:meiyou_extensions_lib/src/utils/try_catch.dart';

/// A class that provides utility functions for lists.
class ListUtils {
  /// Maps a list to a new list using a generator function.
  ///
  /// The `map` function takes the following parameters:
  /// * `list`: A list of elements to map.
  /// * `toElement`: A function that takes an element and returns a new element.
  ///
  /// It returns a new list where each element is the result of calling the `toElement` function on the corresponding element in the original list.
  static List<B> map<A, B>(List<A> list, B Function(A) toElement) {
    return list.mapAsList(toElement);
  }

  /// Maps each element of the given list to a new element with an index using the provided generator function.
  ///
  /// * `list`: A list of elements to map.
  /// * `toElement`: A function that takes an index and an element, and returns a new element.
  ///
  /// Returns a new list where each element is the result of calling the `toElement` function on the corresponding element and index in the original list.
  static List<B> mapIndexed<A, B>(List<A> list, B Function(int, A) toElement) {
    return list.mapWithIndex(toElement);
  }

  /// Maps each non-null element of the given list to a new element using the provided generator function.
  ///
  /// * `list`: A list of nullable elements to map.
  /// * `toElement`: A function that takes a non-null element and returns a new element.
  ///
  /// Returns a new list where each non-null element is the result of calling the `toElement` function on the corresponding non-null element in the original list.
  static List<B> mapNotNull<A, B>(List<A?> list, B Function(A) toElement) {
    return [
      for (var e in list)
        if (e.isNotNull) toElement(e as A)
    ];
  }

  /// Maps each element of the given nullable list to a new element using the provided generator function.
  ///
  /// * `list`: A nullable list of elements to map.
  /// * `toElement`: A function that takes an element and returns a new element.
  ///
  /// Returns a new list where each element is the result of calling the `toElement` function on the corresponding element in the original nullable list.
  static List<B>? mapNullable<A, B>(List<A>? list, B Function(A) toElement) {
    return list == null
        ? null
        : [
            for (var e in list)
              if (e.isNotNull) toElement(e)
          ];
  }

  /// Maps each element of the given list to a new element using the provided generator function only when a specified condition is met.
  ///
  /// * `list`: A list of elements to map.
  /// * `toElement`: A function that takes an element and returns a new element.
  /// * `test`: A function that takes an element and returns a boolean indicating whether to apply the mapping.
  ///
  /// Returns a new list where each element is the result of calling the `toElement` function on the corresponding element in the original list only if the `test` condition is true.
  static List<B> mapWhen<A, B>(
    List<A> list,
    B Function(A) toElement,
    bool Function(A) test,
  ) {
    return [
      for (var e in list)
        if (test(e)) toElement(e)
    ];
  }

  /// Returns a new list containing only non-null elements from the given list.
  ///
  /// * `list`: A list of nullable elements.
  ///
  /// Returns a new list containing only the non-null elements from the original list.
  static List<A> whereNotNull<A>(List<A?> list) {
    return [
      for (var e in list)
        if (e.isNotNull) e!
    ];
  }

  /// Returns the first element that satisfies the specified condition, or `null` if no such element is found.
  ///
  /// * `list`: A list of elements to search.
  /// * `test`: A function that takes an element and returns a boolean indicating whether it satisfies a condition.
  /// * `orElse`: A function that returns a default value if no element is found (optional).
  ///
  /// Returns the first element in the list that satisfies the `test` condition, or `null` if no such element is found. If provided, `orElse` is invoked and its result is returned if no matching element is found.
  static A? firstWhereOrNull<A>(List<A> list, bool Function(A) test,
      {A Function()? orElse}) {
    return list.tryfirstWhere((it) => test(it), orElse: orElse);
  }

  /// Flattens a list of lists into a single list.
  ///
  /// * `list`: A list of lists to flatten.
  ///
  /// Returns a new list that is a flattened version of the original list of lists.
  static List<A> faltten<A>(List<List<A>> list) {
    return list.faltten();
  }

  /// Adds a value to the given list only if it is non-null.
  ///
  /// * `list`: A list to which the value is added.
  /// * `value`: The value to add (nullable).
  ///
  /// If the value is non-null, it is added to the list.
  static void addIfNotNull<A>(List<A> list, A? value) {
    return trySync<void>(() {
      if (value.isNotNull) list.add(value as A);
    });
  }
}
