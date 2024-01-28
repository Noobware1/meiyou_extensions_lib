import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/io.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'dart:io';

import 'package:okhttp/okhttp.dart';

/// dart_eval bimodal wrapper for [InternetSocketAddress]
class $InternetSocketAddress implements InternetSocketAddress, $Instance {
  /// Configure the [$InternetSocketAddress] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library,
        'InternetSocketAddress.fromHost', __$static$method$fromHost.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'InternetSocketAddress.fromPort', __$static$method$fromPort.call);
    runtime.registerBridgeFunc($type.spec!.library,
        'InternetSocketAddress.fromAddress', __$static$method$fromAddress.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.internetSocketAddress);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {},
    fields: {},
    methods: {
      'fromHost': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(OkHttpTypes.internetSocketAddress, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'hostname',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'port',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'fromPort': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.internetSocketAddress, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'port',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'fromAddress': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.internetSocketAddress, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'address',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(IoTypes.internetAddress, []),
                      nullable: true),
                  false),
              BridgeParameter(
                  'port',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
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
      'hostName': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'address': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(IoTypes.internetAddress, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'port': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'isUnresolved': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
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

  /// Wrap an [InternetSocketAddress] in an [$InternetSocketAddress]
  $InternetSocketAddress.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'hostName':
        return $String($value.hostName);
      case 'address':
        return $value.address == null
            ? $null()
            : $InternetAddress.wrap($value.address!);
      case 'port':
        return $int($value.port);
      case 'isUnresolved':
        return $bool($value.isUnresolved);
      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  InternetSocketAddress get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final InternetSocketAddress $value;

  @override
  String get hostName => $value.hostName;

  @override
  InternetAddress? get address => $value.address;

  @override
  int get port => $value.port;

  @override
  bool get isUnresolved => $value.isUnresolved;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as InternetSocketAddress;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$static$method$fromHost = $Function(_$static$method$fromHost);
  static $Value? _$static$method$fromHost(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final hostname = args[0]?.$value as String;
    final port = args[1]?.$value as int;
    final $result = InternetSocketAddress.fromHost(hostname, port);
    return $Future
        .wrap($result.then((value) => $InternetSocketAddress.wrap(value)));
  }

  static const __$static$method$fromPort = $Function(_$static$method$fromPort);
  static $Value? _$static$method$fromPort(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final port = args[0]?.$value as int;
    final $result = InternetSocketAddress.fromPort(port);
    return $InternetSocketAddress.wrap($result);
  }

  static const __$static$method$fromAddress =
      $Function(_$static$method$fromAddress);
  static $Value? _$static$method$fromAddress(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final address = args[0]?.$reified as InternetAddress;
    final port = args[1]?.$value as int;
    final $result = InternetSocketAddress.fromAddress(address, port);
    return $InternetSocketAddress.wrap($result);
  }
}
