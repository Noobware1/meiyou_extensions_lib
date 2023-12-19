import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:meiyou_extensions_lib/src/extenstions/object.dart';

/// A class that provides utility functions for iterables.
class IterableUtils {
  static Iterable<B> mapIndexed<A, B>(
      Iterable<A> iterable, B Function(int, A) toElement) {
    return iterable.mapWithIndex(toElement);
  }

  static Iterable<B> mapNotNull<A, B>(
      Iterable<A?> iterable, B Function(A) toElement) {
    return [
      for (var e in iterable)
        if (e.isNotNull) toElement(e as A)
    ];
  }

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

  static Iterable<A> whereNotNull<A>(Iterable<A?> iterable) {
    return [
      for (var e in iterable)
        if (e.isNotNull) e!
    ];
  }

  static A? firstWhereOrNull<A>(Iterable<A> iterable, bool Function(A) test,
      {A Function()? orElse}) {
    return iterable.tryfirstWhere((it) => test(it), orElse: orElse);
  }

  static Iterable<A> faltten<A>(Iterable<Iterable<A>> iterable) {
    return iterable.faltten();
  }
}
