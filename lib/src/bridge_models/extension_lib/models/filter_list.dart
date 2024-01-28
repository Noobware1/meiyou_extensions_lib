import 'dart:math';

import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/filter.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/filter.dart';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/models/filter_list.dart';

/// dart_eval bimodal wrapper for [FilterList]
class $FilterList<E> implements FilterList<E>, $Instance {
  /// Configure the [$FilterList] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'FilterList.', __$FilterList$new.call);
  }

  late final $Instance _superclass = $List<Filter<E>>.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.filterList);

  static const $declaration = BridgeClassDef(
    BridgeClassType($type,
        $extends: BridgeTypeRef(CoreTypes.list, [
          BridgeTypeRef(ExtensionLibTypes.filter, [
            BridgeTypeRef.ref('E', []),
          ]),
        ]),
        $implements: [],
        isAbstract: false,
        generics: {
          'E': BridgeGenericParam(),
        }),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'list',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.filter, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                    ]),
                    nullable: false),
                false)
          ],
          namedParams: [],
          generics: {
            'E': BridgeGenericParam(),
          },
        ),
        isFactory: false,
      )
    },
    fields: {
      'list': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.filter, [
                  BridgeTypeRef.ref('E', []),
                ]),
              ]),
              nullable: false),
          isStatic: false),
      'length': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      '[]=': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.filter, [
                        BridgeTypeRef.ref('E', []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      '[]': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.filter, [
                  BridgeTypeRef.ref('E', []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
            generics: {
              'E': BridgeGenericParam(),
            },
          ),
          isStatic: false),
      '==': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'other',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'hashCode': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [FilterList] in an [$FilterList]
  $FilterList.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'list':
        return $List.wrap($value.list);
      case 'length':
        return $int($value.length);
      case 'hashCode':
        return $int($value.hashCode);
      case '[]=':
        return __$indexput;
      case '[]':
        return __$index;
      case '==':
        return __$equals;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  FilterList<E> get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'length':
        $value.length = value.$value as int;
        break;
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final FilterList<E> $value;

  @override
  int get hashCode => $value.hashCode;

  static const __$indexput = $Function(_$indexput);
  static $Value? _$indexput(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as FilterList;
    final index = args[0]?.$value as int;
    final value = args[1]?.$value;
    obj[index] = value;
    return null;
  }

  static const __$index = $Function(_$index);
  static $Value? _$index(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as FilterList;
    final index = args[0]?.$value as int;
    final $result = obj[index];
    return $Filter.wrap($result);
  }

  @override
  operator ==(Object other) => $value == other;
  static const __$equals = $Function(_$equals);
  static $Value? _$equals(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as FilterList;
    final other = args[0]?.$value as Object;
    final $result = obj == other;
    return $bool($result);
  }

  static const __$FilterList$new = $Function(_$FilterList$new);
  static $Value? _$FilterList$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final list = (args[0]?.$value as List).cast<Filter>();
    return $FilterList.wrap(FilterList(list));
  }

  @override
  late Filter<E> first = $value.first;

  @override
  late Filter<E> last = $value.last;

  @override
  late int length = $value.length;

  @override
  List<Filter<E>> operator +(List<Filter<E>> other) => $value + other;

  @override
  Filter<E> operator [](int index) => $value[index];

  @override
  void operator []=(int index, Filter<E> value) => $value[index] = value;

  @override
  void add(Filter<E> element) => $value.add(element);

  @override
  void addAll(Iterable<Filter<E>> iterable) => $value.addAll(iterable);

  @override
  bool any(bool Function(Filter<E> element) test) => $value.any(test);

  @override
  Map<int, Filter<E>> asMap() => $value.asMap();

  @override
  List<R> cast<R>() => $value.cast<R>();

  @override
  void clear() => $value.clear();

  @override
  bool contains(Object? element) => $value.contains(element);

  @override
  Filter<E> elementAt(int index) => $value.elementAt(index);

  @override
  bool every(bool Function(Filter<E> element) test) => $value.every(test);

  @override
  Iterable<T> expand<T>(Iterable<T> Function(Filter<E> element) f) =>
      $value.expand(f);

  @override
  void fillRange(int start, int end, [Filter<E>? fill]) =>
      $value.fillRange(start, end, fill);

  @override
  Filter<E> firstWhere(bool Function(Filter<E> element) test,
          {Filter<E> Function()? orElse}) =>
      $value.firstWhere(test, orElse: orElse);

  @override
  T fold<T>(T initialValue,
          T Function(T previousValue, Filter<E> element) combine) =>
      $value.fold(initialValue, combine);

  @override
  Iterable<Filter<E>> followedBy(Iterable<Filter<E>> other) =>
      $value.followedBy(other);

  @override
  void forEach(void Function(Filter<E> element) action) =>
      $value.forEach(action);

  @override
  Iterable<Filter<E>> getRange(int start, int end) =>
      $value.getRange(start, end);

  @override
  int indexOf(Object? element, [int start = 0]) =>
      $value.indexOf(element, start);

  @override
  int indexWhere(bool Function(Filter<E> element) test, [int start = 0]) =>
      $value.indexWhere(test, start);

  @override
  void insert(int index, Filter<E> element) => $value.insert(index, element);

  @override
  void insertAll(int index, Iterable<Filter<E>> iterable) =>
      $value.insertAll(index, iterable);

  @override
  bool get isEmpty => $value.isEmpty;

  @override
  bool get isNotEmpty => $value.isNotEmpty;

  @override
  Iterator<Filter<E>> get iterator => $value.iterator;

  @override
  String join([String separator = ""]) => $value.join(separator);

  @override
  int lastIndexOf(Object? element, [int? start]) => $value.lastIndexOf(element);

  @override
  int lastIndexWhere(bool Function(Filter<E> element) test, [int? start]) =>
      $value.lastIndexWhere(test);

  @override
  Filter<E> lastWhere(bool Function(Filter<E> element) test,
          {Filter<E> Function()? orElse}) =>
      $value.lastWhere(test, orElse: orElse);

  @override
  List<Filter<E>> get list => $value.list;

  @override
  Iterable<T> map<T>(T Function(Filter<E> element) f) => $value.map(f);

  @override
  Filter<E> reduce(
          Filter<E> Function(Filter<E> previousValue, Filter<E> element)
              combine) =>
      $value.reduce(combine);

  @override
  bool remove(Object? element) => $value.remove(element);

  @override
  Filter<E> removeAt(int index) => $value.removeAt(index);

  @override
  Filter<E> removeLast() => $value.removeLast();

  @override
  void removeRange(int start, int end) => $value.removeRange(start, end);

  @override
  void removeWhere(bool Function(Filter<E> element) test) =>
      $value.removeWhere(test);

  @override
  void replaceRange(int start, int end, Iterable<Filter<E>> newContents) =>
      $value.replaceRange(start, end, newContents);

  @override
  void retainWhere(bool Function(Filter<E> element) test) =>
      $value.retainWhere(test);

  @override
  Iterable<Filter<E>> get reversed => $value.reversed;

  @override
  void setAll(int index, Iterable<Filter<E>> iterable) =>
      $value.setAll(index, iterable);

  @override
  void setRange(int start, int end, Iterable<Filter<E>> iterable,
          [int skipCount = 0]) =>
      $value.setRange(start, end, iterable, skipCount);

  @override
  void shuffle([Random? random]) => $value.shuffle(random);

  @override
  Filter<E> get single => $value.single;

  @override
  Filter<E> singleWhere(bool Function(Filter<E> element) test,
          {Filter<E> Function()? orElse}) =>
      $value.singleWhere(test, orElse: orElse);

  @override
  Iterable<Filter<E>> skip(int count) => $value.skip(count);

  @override
  Iterable<Filter<E>> skipWhile(bool Function(Filter<E> element) test) =>
      $value.skipWhile(test);
  @override
  void sort([int Function(Filter<E> a, Filter<E> b)? compare]) =>
      $value.sort(compare);

  @override
  List<Filter<E>> sublist(int start, [int? end]) => $value.sublist(start, end);

  @override
  Iterable<Filter<E>> take(int count) => $value.take(count);

  @override
  Iterable<Filter<E>> takeWhile(bool Function(Filter<E> element) test) =>
      $value.takeWhile(test);

  @override
  List<Filter<E>> toList({bool growable = true}) => $value.toList();

  @override
  Set<Filter<E>> toSet() => $value.toSet();

  @override
  Iterable<Filter<E>> where(bool Function(Filter<E> element) test) =>
      $value.where(test);

  @override
  Iterable<T> whereType<T>() => $value.whereType<T>();
}
