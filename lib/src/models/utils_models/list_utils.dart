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

  static List<B> mapIndexed<A, B>(List<A> list, B Function(int, A) toElement) {
    return list.mapWithIndex(toElement);
  }

  static List<B> mapNotNull<A, B>(List<A?> list, B Function(A) toElement) {
    return [
      for (var e in list)
        if (e.isNotNull) toElement(e as A)
    ];
  }

  static List<B>? mapNullable<A, B>(List<A>? list, B Function(A) toElement) {
    return list == null
        ? null
        : [
            for (var e in list)
              if (e.isNotNull) toElement(e)
          ];
  }

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

  static List<A> whereNotNull<A>(List<A?> list) {
    return [
      for (var e in list)
        if (e.isNotNull) e!
    ];
  }

  static A? firstWhereOrNull<A>(List<A> list, bool Function(A) test,
      {A Function()? orElse}) {
    return list.tryfirstWhere((it) => test(it), orElse: orElse);
  }

  static List<A> faltten<A>(List<List<A>> list) {
    return list.faltten();
  }

  static void addIfNotNull<A>(List<A> list, A? value) {
    return trySync<void>(() {
      if (value.isNotNull) list.add(value as A);
    });
  }
}
