// ignore_for_file: constant_identifier_names

abstract class Filter<T> {
  Filter(this.name, this.state);

  final String name;
  T state;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Filter && other.name == name && other.state == state;
  }

  @override
  int get hashCode {
    var result = name.hashCode;
    result = 31 * result + (state?.hashCode ?? 0);
    return result;
  }
}

class HeaderFilter extends Filter<dynamic> {
  HeaderFilter(String name) : super(name, 0);
}

class SeparatorFilter extends Filter<dynamic> {
  SeparatorFilter() : super("", 0);
}

class SelectFilter<V> extends Filter<int> {
  SelectFilter(String name, this.values, [int state = 0]) : super(name, state);

  final List<V> values;
}

class TextFilter extends Filter<String> {
  TextFilter(String name, [String state = ""]) : super(name, state);
}

class CheckBoxFilter extends Filter<bool> {
  CheckBoxFilter(String name, [bool state = false]) : super(name, state);
}

class TriStateFilter extends Filter<int> {
  TriStateFilter(String name, [int state = STATE_IGNORE]) : super(name, state);

  bool get isIgnored => state == STATE_IGNORE;
  bool get isIncluded => state == STATE_INCLUDE;
  bool get isExcluded => state == STATE_EXCLUDE;

  static const int STATE_IGNORE = 0;
  static const int STATE_INCLUDE = 1;
  static const int STATE_EXCLUDE = 2;
}

class GroupFilter<V> extends Filter<List<V>> {
  GroupFilter(String name, List<V> state) : super(name, state);
}

class SortFilter extends Filter<Selection?> {
  SortFilter(String name, this.values, [Selection? state]) : super(name, state);
  final List<String> values;
}

class Selection {
  Selection(this.index, this.ascending);
  final int index;
  final bool ascending;
}
