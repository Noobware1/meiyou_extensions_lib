import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/cookie.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:okhttp/okhttp.dart';

/// dart_eval bimodal wrapper for [CookieJar]
class $CookieJar implements CookieJar, $Instance {
  /// Configure the [$CookieJar] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'CookieJar.NO_COOKIES*g',
        __$static$NO_COOKIES.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.cookieJar);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {},
    fields: {
      'NO_COOKIES': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.cookieJar, []),
              nullable: false),
          isStatic: true),
    },
    methods: {
      'saveFromResponse': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.uri, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'cookies',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(OkHttpTypes.cookie, []),
                      ]),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'loadForRequest': BridgeMethodDef(
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
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [CookieJar] in an [$CookieJar]
  $CookieJar.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'saveFromResponse':
        return __$saveFromResponse;
      case 'loadForRequest':
        return __$loadForRequest;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  CookieJar get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final CookieJar $value;

  static const __$static$NO_COOKIES = $Function(_$static$NO_COOKIES);
  static $Value? _$static$NO_COOKIES(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = CookieJar.NO_COOKIES;
    return $CookieJar.wrap($result);
  }

  @override
  void saveFromResponse(Uri url, List<Cookie> cookies) =>
      $value.saveFromResponse(
        url,
        cookies,
      );
  static const __$saveFromResponse = $Function(_$saveFromResponse);
  static $Value? _$saveFromResponse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieJar;
    final url = args[0]?.$reified as Uri;
    final cookies = args[1]?.$reified.cast<Cookie>();
    obj.saveFromResponse(url, cookies);
    return null;
  }

  @override
  List<Cookie> loadForRequest(Uri url) => $value.loadForRequest(url);
  static const __$loadForRequest = $Function(_$loadForRequest);
  static $Value? _$loadForRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as CookieJar;
    final url = args[0]?.$reified as Uri;
    final $result = obj.loadForRequest(
      url,
    );
    return $List.wrap(List.generate($result.length, (index) {
      return $Cookie.wrap($result[index]);
    }));
  }
}
