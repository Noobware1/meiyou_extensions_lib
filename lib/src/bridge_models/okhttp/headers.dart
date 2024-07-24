import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:okhttp/okhttp.dart' show Headers, HeadersBuilder;

/// dart_eval bimodal wrapper for [Headers]
class $Headers implements $Instance {
  /// Configure the [$Headers] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Headers.Builder', __$static$method$Builder.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Headers.fromMap', __$fromMap.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.headers);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      'fromMap': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type, nullable: false),
          params: [
            BridgeParameter(
              'map',
              BridgeTypeAnnotation(
                  BridgeTypeRef(CoreTypes.map, [
                    BridgeTypeRef(CoreTypes.string),
                    BridgeTypeRef(CoreTypes.string)
                  ]),
                  nullable: false),
              false,
            )
          ],
        ),
      ),
    },
    fields: {},
    methods: {
      'Builder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.headersBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: true),
      'get': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      '[]': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getDate': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'name': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'value': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'values': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'newBuilder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.headersBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'forEach': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'action',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'toList': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(OkHttpTypes.pair, [
                    BridgeTypeRef(CoreTypes.string, []),
                    BridgeTypeRef(CoreTypes.string, []),
                  ]),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'toMap': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeRef(CoreTypes.string, []),
                  BridgeTypeRef(CoreTypes.list, [
                    BridgeTypeRef(CoreTypes.string, []),
                  ]),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'length': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'names': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(
                    //change this
                    CoreTypes.list,
                    [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
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

  /// Wrap an [Headers] in an [$Headers]
  $Headers.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'length':
        return $int($value.length);
      case 'names':
        return $List.wrap($value.names.toList());
      case 'get':
        return __$get;
      case '[]':
        return __$index;
      case 'getDate':
        return __$getDate;
      case 'name':
        return __$name;
      case 'value':
        return __$value;
      case 'values':
        return __$values;
      case 'newBuilder':
        return __$newBuilder;
      case 'forEach':
        return __$forEach;

      // case 'toList':
      //   return __$toList;
      case 'toMap':
        return __$toMap;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Headers get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Headers $value;

  static const __$get = $Function(_$get);
  static $Value? _$get(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Headers;
    final name = args[0]?.$reified as String;
    final $result = obj.get(
      name,
    );
    return $result == null ? $null() : $String($result);
  }

  static const __$index = $Function(_$index);
  static $Value? _$index(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Headers;
    final name = args[0]?.$reified as String;
    final $result = obj[name];
    return $result == null ? $null() : $String($result);
  }

  static const __$getDate = $Function(_$getDate);
  static $Value? _$getDate(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Headers;
    final name = args[0]?.$reified as String;
    final $result = obj.getDate(
      name,
    );
    return $result == null ? $null() : $DateTime.wrap($result);
  }

  static const __$name = $Function(_$name);
  static $Value? _$name(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Headers;
    final index = args[0]?.$reified as int;
    final $result = obj.name(
      index,
    );
    return $String($result);
  }

  static const __$value = $Function(_$value);
  static $Value? _$value(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Headers;
    final index = args[0]?.$reified as int;
    final $result = obj.value(
      index,
    );
    return $String($result);
  }

  static const __$values = $Function(_$values);
  static $Value? _$values(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Headers;
    final name = args[0]?.$reified as String;
    final $result = obj.values(
      name,
    );
    return $result == null
        ? $null()
        : $List.wrap(List.generate(($result).length, (index) {
            return $String($result[index]);
          })) as $Value?;
  }

  static const __$newBuilder = $Function(_$newBuilder);
  static $Value? _$newBuilder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Headers;
    final $result = obj.newBuilder();
    return $HeadersBuilder.wrap($result);
  }

  static const __$forEach = $Function(_$forEach);
  static $Value? _$forEach(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Headers;
    final action = args[0] as EvalCallable;
    obj.forEach(
      (name, value) => action.call(runtime, null, [
        $String(name),
        $List.wrap(List.generate((value).length, (index) {
          return $String(value[index]);
        }))
      ]),
    );
    return null;
  }

  @override
  String toString() => $value.toString();

  // static const __$toList = $Function(_$toList);
  // static $Value? _$toList(Runtime runtime, $Value? target, List<$Value?> args) {
  //   final obj = target?.$value as Headers;
  //   final $result = obj.toList();
  //   return $List.wrap(List.generate(($result).length, (index) {
  //     return $Pair.wrap($result[index]);
  //   }));
  // }

  static const __$toMap = $Function(_$toMap);
  static $Value? _$toMap(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Headers;
    final $result = obj.toMap();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value
            ? value
            : $List.wrap(List.generate((value).length, (index) {
                return $String(value[index]);
              })) as $Value?,
      ));
    }));
  }

  static const __$static$method$Builder = $Function(_$static$method$Builder);
  static $Value? _$static$method$Builder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = Headers.Builder();
    return $HeadersBuilder.wrap($result);
  }

  static const __$fromMap = $Function(_$fromMap);
  static $Value? _$fromMap(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final map = (args[0]?.$reified as Map).cast<String, String>();
    final $result = Headers.fromMap(map);
    return $Headers.wrap($result);
  }
}

/// dart_eval bimodal wrapper for [HeadersBuilder]
class $HeadersBuilder implements $Instance {
  /// Configure the [$HeadersBuilder] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.headersBuilder);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'headers',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                    nullable: true),
                true)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {
      'add': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.headersBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addAll': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.headersBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'headers',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'set': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.headersBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'removeAll': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.headersBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'build': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.headers, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [HeadersBuilder] in an [$HeadersBuilder]
  $HeadersBuilder.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'add':
        return __$add;
      case 'addAll':
        return __$addAll;
      case 'set':
        return __$set;
      case 'removeAll':
        return __$removeAll;
      case 'build':
        return __$build;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  HeadersBuilder get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final HeadersBuilder $value;

  static const __$add = $Function(_$add);
  static $Value? _$add(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as HeadersBuilder;
    final name = args[0]?.$reified as String;
    final value = args[1]?.$reified as dynamic;
    final $result = obj.add(
      name,
      value,
    );
    return $HeadersBuilder.wrap($result);
  }

  static const __$addAll = $Function(_$addAll);
  static $Value? _$addAll(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as HeadersBuilder;
    final headers = args[0]?.$reified as Headers;
    final $result = obj.addAll(
      headers,
    );
    return $HeadersBuilder.wrap($result);
  }

  static const __$set = $Function(_$set);
  static $Value? _$set(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as HeadersBuilder;
    final name = args[0]?.$reified as String;
    final value = args[1]?.$reified as dynamic;
    final $result = obj.set(
      name,
      value,
    );
    return $HeadersBuilder.wrap($result);
  }

  static const __$removeAll = $Function(_$removeAll);
  static $Value? _$removeAll(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as HeadersBuilder;
    final name = args[0]?.$reified as String;
    final $result = obj.removeAll(
      name,
    );
    return $HeadersBuilder.wrap($result);
  }

  static const __$build = $Function(_$build);
  static $Value? _$build(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as HeadersBuilder;
    final $result = obj.build();
    return $Headers.wrap($result);
  }
}
