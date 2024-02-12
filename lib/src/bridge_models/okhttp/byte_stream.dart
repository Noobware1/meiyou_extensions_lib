import 'dart:convert';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:dart_eval/stdlib/typed_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:okhttp/okhttp.dart';

/// dart_eval bimodal wrapper for [ByteStream]
class $ByteStream implements $Instance {
  /// Configure the [$ByteStream] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ByteStream.', __$ByteStream$new.call);
    runtime.registerBridgeFunc($type.spec!.library, 'ByteStream.fromBytes',
        __$ByteStream$fromBytes.call);
  }

  late final $Instance _superclass = $StreamView.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.byteStream);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(AsyncTypes.streamView, [
        BridgeTypeRef(CoreTypes.list, [
          BridgeTypeRef(CoreTypes.int, []),
        ]),
      ]),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'stream',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.stream, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      ),
      'fromBytes': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'bytes',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.int, []),
                    ]),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      )
    },
    fields: {},
    methods: {
      'toBytes': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(TypedDataTypes.uint8List, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'bytesToString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'encoding',
                  BridgeTypeAnnotation(BridgeTypeRef(ConvertTypes.encoding, []),
                      nullable: false),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'toStringStream': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stream, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'encoding',
                  BridgeTypeAnnotation(BridgeTypeRef(ConvertTypes.encoding, []),
                      nullable: false),
                  true)
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

  /// Wrap an [ByteStream] in an [$ByteStream]
  $ByteStream.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'toBytes':
        return __$toBytes;
      case 'bytesToString':
        return __$bytesToString;
      case 'toStringStream':
        return __$toStringStream;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ByteStream get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ByteStream $value;

  static const __$toBytes = $Function(_$toBytes);
  static $Value? _$toBytes(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ByteStream;
    final $result = obj.toBytes();
    return $Future.wrap($result.then((value) => $Uint8List.wrap(value)));
  }

  static const __$bytesToString = $Function(_$bytesToString);
  static $Value? _$bytesToString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ByteStream;
    final encoding = args[0]?.$reified as Encoding? ?? utf8;
    final $result = obj.bytesToString(encoding);
    return $Future.wrap($result.then((value) => $String(value)));
  }

  static const __$toStringStream = $Function(_$toStringStream);
  static $Value? _$toStringStream(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ByteStream;
    final encoding = args[0]?.$reified as Encoding? ?? utf8;
    final $result = obj.toStringStream(encoding);
    return $Stream.wrap($result);
  }

  static const __$ByteStream$new = $Function(_$ByteStream$new);
  static $Value? _$ByteStream$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final stream = args[0]?.$reified;
    return $ByteStream.wrap(ByteStream(stream));
  }

  static const __$ByteStream$fromBytes = $Function(_$ByteStream$fromBytes);
  static $Value? _$ByteStream$fromBytes(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final bytes = args[0]?.$reified.cast<int>();
    return $ByteStream.wrap(ByteStream.fromBytes(
      bytes,
    ));
  }
}
