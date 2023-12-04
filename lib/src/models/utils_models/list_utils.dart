import 'package:meiyou_extenstions/src/extenstions/iterable.dart';

class ListUtils {
  static List<T> mapList<T, E>(List<E> list, T Function(E) toElement) {
    return list.mapAsList(toElement);
  }
}
