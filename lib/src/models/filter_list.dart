import 'package:meiyou_extensions_lib/src/models/filter.dart';
import 'dart:collection';

class FilterList<E> extends ListBase<Filter<E>> {
  final List<Filter<E>> list;

  @override
  int length;

  FilterList(this.list) : length = list.length;

  @override
  void operator []=(int index, Filter<E> value) {
    list[index] = value;
  }

  @override
  Filter<E> operator [](int index) {
    return list[index];
  }

  @override
  operator ==(Object other) {
    return false;
  }

  @override
  int get hashCode => list.hashCode;
}
