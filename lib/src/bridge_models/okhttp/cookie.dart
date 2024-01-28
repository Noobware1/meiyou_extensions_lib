import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:okhttp/okhttp.dart';

/// dart_eval bimodal wrapper for [Cookie]
class $Cookie implements Cookie, $Instance {
  /// Configure the [$Cookie] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Cookie.Builder', __$static$method$Builder.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Cookie.parseAll', __$static$method$parseAll.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Cookie.parse', __$static$method$parse.call);
    runtime.registerBridgeFunc($type.spec!.library, 'Cookie.parseExpires',
        __$static$method$parseExpires.call);
    runtime.registerBridgeFunc(
        $type.spec!.library,
        'Cookie.dateCharacterOffset',
        __$static$method$dateCharacterOffset.call);
    runtime.registerBridgeFunc($type.spec!.library, 'Cookie.parseMaxAge',
        __$static$method$parseMaxAge.call);
    runtime.registerBridgeFunc($type.spec!.library, 'Cookie.parseDomain',
        __$static$method$parseDomain.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.cookie);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {},
    fields: {
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'value': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'expiresAt': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'domain': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'path': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'secure': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'httpOnly': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'persistent': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'hostOnly': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'sameSite': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'Builder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: true),
      'parseAll': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(OkHttpTypes.cookie, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'headers',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'parse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.cookie, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'setCookie',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'parseExpires': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [
              BridgeParameter(
                  's',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'pos',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'limit',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'dateCharacterOffset': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'input',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'pos',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'limit',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'invert',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'parseMaxAge': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [
              BridgeParameter(
                  's',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'parseDomain': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  's',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'matches': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'newBuilder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
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
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'forObsoleteRfc2965',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'pathMatch': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'path',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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

  /// Wrap an [Cookie] in an [$Cookie]
  $Cookie.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);
      case 'value':
        return $String($value.value);
      case 'expiresAt':
        return $int($value.expiresAt);
      case 'domain':
        return $String($value.domain);
      case 'path':
        return $String($value.path);
      case 'secure':
        return $bool($value.secure);
      case 'httpOnly':
        return $bool($value.httpOnly);
      case 'persistent':
        return $bool($value.persistent);
      case 'hostOnly':
        return $bool($value.hostOnly);
      case 'sameSite':
        return $value.sameSite == null ? $null() : $String($value.sameSite!);
      case 'hashCode':
        return $int($value.hashCode);
      case 'matches':
        return __$matches;
      case 'newBuilder':
        return __$newBuilder;
      case '==':
        return __$equals;
      case 'toString':
        return __$toString;
      case 'pathMatch':
        return __$pathMatch;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Cookie get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Cookie $value;

  @override
  String get name => $value.name;
  @override
  String get value => $value.value;
  @override
  int get expiresAt => $value.expiresAt;
  @override
  String get domain => $value.domain;
  @override
  String get path => $value.path;
  @override
  bool get secure => $value.secure;
  @override
  bool get httpOnly => $value.httpOnly;
  @override
  bool get persistent => $value.persistent;
  @override
  bool get hostOnly => $value.hostOnly;
  @override
  String? get sameSite => $value.sameSite;

  @override
  int get hashCode => $value.hashCode;

  @override
  bool matches(Uri url) => $value.matches(
        url,
      );
  static const __$matches = $Function(_$matches);
  static $Value? _$matches(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Cookie;
    final url = args[0]?.$reified as Uri;
    final $result = obj.matches(
      url,
    );
    return $bool($result);
  }

  @override
  CookieBuilder newBuilder() => $value.newBuilder();
  static const __$newBuilder = $Function(_$newBuilder);
  static $Value? _$newBuilder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Cookie;
    final $result = obj.newBuilder();
    return $CookieBuilder.wrap($result);
  }

  @override
  bool operator ==(Object other) => $value == other;
  static const __$equals = $Function(_$equals);
  static $Value? _$equals(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Cookie;
    final other = args[0]?.$reified as Object;
    final $result = obj == other;
    return $bool($result);
  }

  @override
  String toString([bool forObsoleteRfc2965 = false]) => $value.toString(
        forObsoleteRfc2965,
      );
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Cookie;
    final forObsoleteRfc2965 = args[0]?.$reified as bool? ?? false;
    final $result = obj.toString(
      forObsoleteRfc2965,
    );
    return $String($result);
  }

  @override
  bool pathMatch(Uri url, String path) => $value.pathMatch(
        url,
        path,
      );
  static const __$pathMatch = $Function(_$pathMatch);
  static $Value? _$pathMatch(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Cookie;
    final url = args[0]?.$reified as Uri;
    final path = args[1]?.$reified as String;
    final $result = obj.pathMatch(
      url,
      path,
    );
    return $bool($result);
  }

  static const __$static$method$Builder = $Function(_$static$method$Builder);
  static $Value? _$static$method$Builder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = Cookie.Builder();
    return $CookieBuilder.wrap($result);
  }

  static const __$static$method$parseAll = $Function(_$static$method$parseAll);
  static $Value? _$static$method$parseAll(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$reified as Uri;
    final headers = args[1]?.$reified as Headers;
    final $result = Cookie.parseAll(
      url,
      headers,
    );
    return $List.wrap(List.generate(($result).length, (index) {
      return $Cookie.wrap($result[index]);
    }));
  }

  static const __$static$method$parse = $Function(_$static$method$parse);
  static $Value? _$static$method$parse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$reified as Uri;
    final setCookie = args[1]?.$reified as String;
    final $result = Cookie.parse(
      url,
      setCookie,
    );
    return $result == null ? $null() : $Cookie.wrap($result);
  }

  static const __$static$method$parseExpires =
      $Function(_$static$method$parseExpires);
  static $Value? _$static$method$parseExpires(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final s = args[0]?.$reified as String;
    final pos = args[1]?.$reified as int;
    final limit = args[2]?.$reified as int;
    final $result = Cookie.parseExpires(
      s,
      pos,
      limit,
    );
    return $int($result);
  }

  static const __$static$method$dateCharacterOffset =
      $Function(_$static$method$dateCharacterOffset);
  static $Value? _$static$method$dateCharacterOffset(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final input = args[0]?.$reified as String;
    final pos = args[1]?.$reified as int;
    final limit = args[2]?.$reified as int;
    final invert = args[3]?.$reified as bool;
    final $result = Cookie.dateCharacterOffset(
      input,
      pos,
      limit,
      invert,
    );
    return $int($result);
  }

  static const __$static$method$parseMaxAge =
      $Function(_$static$method$parseMaxAge);
  static $Value? _$static$method$parseMaxAge(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final s = args[0]?.$reified as String;
    final $result = Cookie.parseMaxAge(
      s,
    );
    return $int($result);
  }

  static const __$static$method$parseDomain =
      $Function(_$static$method$parseDomain);
  static $Value? _$static$method$parseDomain(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final s = args[0]?.$reified as String;
    final $result = Cookie.parseDomain(
      s,
    );
    return $String($result);
  }
}

/// dart_eval bimodal wrapper for [CookieBuilder]
class $CookieBuilder implements $Instance {
  /// Configure the [$CookieBuilder] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.cookieBuilder);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'cookie',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.cookie, []),
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
      'name': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
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
      'value': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'expiresAt': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'expiresAt',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'domain': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'domain',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'hostOnlyDomain': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'domain',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'path': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'path',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'secure': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'httpOnly': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'sameSite': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.cookieBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'sameSite',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'build': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.cookie, []),
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

  /// Wrap an [CookieBuilder] in an [$CookieBuilder]
  $CookieBuilder.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return __$name;
      case 'value':
        return __$value;
      case 'expiresAt':
        return __$expiresAt;
      case 'domain':
        return __$domain;
      case 'hostOnlyDomain':
        return __$hostOnlyDomain;
      case 'path':
        return __$path;
      case 'secure':
        return __$secure;
      case 'httpOnly':
        return __$httpOnly;
      case 'sameSite':
        return __$sameSite;
      case 'build':
        return __$build;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  CookieBuilder get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final CookieBuilder $value;

  static const __$name = $Function(_$name);
  static $Value? _$name(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieBuilder;
    final name = args[0]?.$reified as String;
    final $result = obj.name(name);
    return $CookieBuilder.wrap($result);
  }

  static const __$value = $Function(_$value);
  static $Value? _$value(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieBuilder;
    final value = args[0]?.$reified as String;
    final $result = obj.value(value);
    return $CookieBuilder.wrap($result);
  }

  static const __$expiresAt = $Function(_$expiresAt);
  static $Value? _$expiresAt(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieBuilder;
    final expiresAt = args[0]?.$reified as int;
    final $result = obj.expiresAt(expiresAt);
    return $CookieBuilder.wrap($result);
  }

  static const __$domain = $Function(_$domain);
  static $Value? _$domain(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieBuilder;
    final domain = args[0]?.$reified as String;
    final $result = obj.domain(domain);
    return $CookieBuilder.wrap($result);
  }

  static const __$hostOnlyDomain = $Function(_$hostOnlyDomain);
  static $Value? _$hostOnlyDomain(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieBuilder;
    final domain = args[0]?.$reified as String;
    final $result = obj.hostOnlyDomain(domain);
    return $CookieBuilder.wrap($result);
  }

  static const __$path = $Function(_$path);
  static $Value? _$path(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieBuilder;
    final path = args[0]?.$reified as String;
    final $result = obj.path(path);
    return $CookieBuilder.wrap($result);
  }

  static const __$secure = $Function(_$secure);
  static $Value? _$secure(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieBuilder;
    final $result = obj.secure();
    return $CookieBuilder.wrap($result);
  }

  static const __$httpOnly = $Function(_$httpOnly);
  static $Value? _$httpOnly(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieBuilder;
    final $result = obj.httpOnly();
    return $CookieBuilder.wrap($result);
  }

  static const __$sameSite = $Function(_$sameSite);
  static $Value? _$sameSite(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieBuilder;
    final sameSite = args[0]?.$reified as String;
    final $result = obj.sameSite(sameSite);
    return $CookieBuilder.wrap($result);
  }

  static const __$build = $Function(_$build);
  static $Value? _$build(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieBuilder;
    final $result = obj.build();
    return $Cookie.wrap($result);
  }
}
