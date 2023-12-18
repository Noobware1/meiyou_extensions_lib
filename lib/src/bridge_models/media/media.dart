import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/media_type.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/media/media.dart';

class $Media implements Media, $Instance {
  $Media.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'Media.', $new);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'Media'));

  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: false),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
          BridgeParameter(
              'mediaType',
              BridgeTypeAnnotation(
                $MediaType.$type,
              ),
              false),
          BridgeParameter(
              'headers',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map),
                  nullable: true),
              true),
          BridgeParameter(
              'extra',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map),
                  nullable: true),
              true),
        ]),
      )
    },
    fields: {
      'mediaType': BridgeFieldDef(
        BridgeTypeAnnotation(
          $MediaType.$type,
        ),
      ),
      'headers': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map), nullable: true),
      ),
      'extra': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map), nullable: true),
      ),
    },
    wrap: true,
  );

  static $Value $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Media.wrap(Media(
      mediaType: args[0]?.$value,
      headers: args[1]?.$value,
      extra: args[2]?.$value,
    ));
  }

  @override
  Map<String, dynamic>? get extra => $value.extra;

  @override
  Map<String, String>? get headers => $value.headers;

  @override
  MediaType? get mediaType => $value.mediaType;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'mediaType':
        return $value.mediaType != null
            ? $MediaType.wrap($value.mediaType!)
            : const $null();
      case 'headers':
        return $value.headers != null
            ? $Map.wrap($value.headers!
                .map((key, value) => MapEntry($String(key), $String(value))))
            : const $null();
      case 'extra':
        return $value.extra != null
            ? $Map.wrap($value.headers!
                .map((key, value) => MapEntry($String(key), value)))
            : const $null();

      default:
        return const $null();
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'mediaType':
        $value.mediaType = value.$reified;
      case 'headers':
        $value.headers = value.$reified;
      case 'extra':
        $value.extra = value.$reified;
    }
  }

  @override
  final Media $value;

  @override
  set extra(Map<String, dynamic>? extra) {
    // TODO: implement extra
  }

  @override
  set headers(Map<String, String>? headers) {
    // TODO: implement headers
  }

  @override
  set mediaType(MediaType? mediaType) {
    // TODO: implement mediaType
  }

  @override
  String toString() {
    return $value.toString();
  }
}
