// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/internet_socket_address.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

import 'package:okhttp/okhttp.dart';

class $ProxyType implements $Instance {
  $ProxyType.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        $type.spec!.library, 'ProxyType', $ProxyType.$values);
  }

  static const $type = BridgeTypeRef(OkHttpTypes.proxyType);

  static const $declaration = BridgeEnumDef($type,
      values: ['DIRECT', 'HTTP', 'SOCKS'],
      methods: {},
      getters: {},
      setters: {},
      fields: {});

  static final $values = {
    'DIRECT': $ProxyType.wrap(ProxyType.DIRECT),
    'HTTP': $ProxyType.wrap(ProxyType.HTTP),
    'SOCKS': $ProxyType.wrap(ProxyType.SOCKS),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ProxyType get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final ProxyType $value;

  @override
  String toString() {
    return $value.toString();
  }
}

/// dart_eval bimodal wrapper for [Proxy]
class $Proxy implements Proxy, $Instance {
  /// Configure the [$Proxy] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Proxy.', __$Proxy$new.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Proxy.NO_PROXY*g', __$static$NO_PROXY.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.proxy);

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
          params: [],
          namedParams: [
            BridgeParameter(
                'type',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.proxyType, []),
                    nullable: true),
                true),
            BridgeParameter(
                'sa',
                BridgeTypeAnnotation(
                    BridgeTypeRef(OkHttpTypes.internetSocketAddress, []),
                    nullable: true),
                true),
            BridgeParameter(
                'auth',
                BridgeTypeAnnotation(
                    BridgeTypeRef(OkHttpTypes.passwordAuthentication, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'NO_PROXY': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.proxy, []),
              nullable: false),
          isStatic: true),
    },
    methods: {
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'type': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.proxyType, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'address': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.internetSocketAddress, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'userName': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'password': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Proxy] in an [$Proxy]
  $Proxy.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'type':
        return $ProxyType.wrap($value.type);
      case 'address':
        return $value.address == null
            ? $null()
            : $InternetSocketAddress.wrap($value.address!);
      case 'userName':
        return $value.userName == null ? $null() : $String($value.userName!);
      case 'password':
        return $value.password == null ? $null() : $String($value.password!);

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Proxy get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Proxy $value;

  static const __$static$NO_PROXY = $Function(_$static$NO_PROXY);
  static $Value? _$static$NO_PROXY(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = Proxy.NO_PROXY;
    return $Proxy.wrap($result);
  }

  @override
  ProxyType get type => $value.type;

  @override
  InternetSocketAddress? get address => $value.address;

  @override
  String? get userName => $value.userName;

  @override
  String? get password => $value.password;

  @override
  String toString() => $value.toString();
  

  static const __$Proxy$new = $Function(_$Proxy$new);
  static $Value? _$Proxy$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final type = args[0]?.$value as ProxyType?;
    final sa = args[1]?.$value as InternetSocketAddress?;
    final auth = args[2]?.$value as PasswordAuthentication?;
    return $Proxy.wrap(Proxy(type: type, sa: sa, auth: auth));
  }
}
