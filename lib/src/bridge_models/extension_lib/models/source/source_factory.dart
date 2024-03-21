import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/models/source/source_factory.dart';

class $SourceFactory extends SourceFactory with $Bridge<SourceFactory> {
  static const $type = BridgeTypeRef(ExtensionLibTypes.sourceFactory);

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'SourceFactory.', $new.call,
        isBridge: true);
  }

  static const $declaration =
      BridgeClassDef(BridgeClassType($type, isAbstract: true),
          constructors: {
            '': BridgeConstructorDef(
              BridgeFunctionDef(
                returns: BridgeTypeAnnotation($type),
              ),
            )
          },
          methods: {
            'getSources': BridgeMethodDef(
              BridgeFunctionDef(
                returns: BridgeTypeAnnotation(
                  BridgeTypeRef(CoreTypes.list, [
                    BridgeTypeRef(ExtensionLibTypes.source),
                  ]),
                ),
                params: [],
              ),
            ),
          },
          bridge: true,
          wrap: false);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SourceFactory();
  }

  @override
  $Value? $bridgeGet(String identifier) {
    throw UnimplementedError();
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    throw UnimplementedError();
  }

  @override
  List<Source> getSources() {
    return ($_invoke('getSources', []) as List).cast<Source>();
  }
}
