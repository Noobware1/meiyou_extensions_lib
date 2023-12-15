import 'package:meiyou_extenstions/src/extenstions/iterable.dart';

/// A class that provides utility functions for lists.
class ListUtils {
  /// Maps a list to a new list using a generator function.
  ///
  /// The `mapList` function takes the following parameters:
  /// * `list`: A list of elements to map.
  /// * `toElement`: A function that takes an element and returns a new element.
  ///
  /// It returns a new list where each element is the result of calling the `toElement` function on the corresponding element in the original list.
  ///
  /// This function uses the `List.map` method to create the new list.
  static List<T> mapList<T, E>(List<E> list, T Function(E) toElement) {
    return list.mapAsList(toElement);
  }
}
