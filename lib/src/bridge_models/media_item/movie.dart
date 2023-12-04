import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/bridge_models/media_item/media_item.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/models/media_item/movie.dart';

class $Movie extends Movie with $Bridge<Movie> {
  $Movie({required super.url, super.posterImage, super.description});

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'Movie.', $new, isBridge: true);
  }

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'Movie'));

  static const $declaration = BridgeClassDef(
    BridgeClassType($type, $extends: $MediaItem.$type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
          BridgeParameter(
              'url',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string),
              ),
              false),
          BridgeParameter(
              'posterImage',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                  nullable: true),
              true),
          BridgeParameter(
              'description',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                  nullable: true),
              true),
        ]),
      )
    },
    fields: {
      'type': BridgeFieldDef(
        BridgeTypeAnnotation($MediaItemType.$type),
      ),
      'url':
          BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
      'posterImage': BridgeFieldDef(
        BridgeTypeAnnotation($MediaItemType.$type, nullable: true),
      ),
      'description': BridgeFieldDef(
        BridgeTypeAnnotation($MediaItemType.$type, nullable: true),
      ),
    },
    bridge: true,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Movie(
      url: args[0]?.$value,
      posterImage: args[1]?.$value,
      description: args[2]?.$value,
    );
  }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'url':
        return $String(super.url);
      case 'posterImage':
        return super.posterImage != null
            ? $String(super.posterImage!)
            : const $null();
      case 'description':
        return super.description != null
            ? $String(super.description!)
            : const $null();

      default:
        return null;
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    // TODO: implement $bridgeSet
  }
}
