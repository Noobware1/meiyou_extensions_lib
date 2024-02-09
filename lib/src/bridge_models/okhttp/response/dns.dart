import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/io.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'dart:io';
import 'package:okhttp/dns.dart';

/// dart_eval bimodal wrapper for [Dns]
class $Dns implements Dns, $Instance {
  /// Configure the [$Dns] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Dns.SYSTEM*g', __$static$SYSTEM.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.dns);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'SYSTEM': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.dns, []),
              nullable: false),
          isStatic: true),
    },
    methods: {
      'lookup': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.list, [
                    BridgeTypeRef(IoTypes.internetAddress, []),
                  ]),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'hostname',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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

  /// Wrap an [Dns] in an [$Dns]
  $Dns.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'lookup':
        return __$lookup;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Dns get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Dns $value;

  static const __$static$SYSTEM = $Function(_$static$SYSTEM);
  static $Value? _$static$SYSTEM(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = Dns.SYSTEM;
    return $Dns.wrap($result);
  }

  @override
  Future<List<InternetAddress>> lookup(String hostname) =>
      $value.lookup(hostname);
  static const __$lookup = $Function(_$lookup);
  static $Value? _$lookup(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Dns;
    final hostname = args[0]?.$value as String;
    final $result = obj.lookup(hostname);
    return $Future.wrap($result
        .then((value) => $List.wrap(List.generate((value).length, (index) {
              return $InternetAddress.wrap(value[index]);
            }))));
  }
}
