import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/models/source/source_factory.dart';

class $SourceFactory extends SourceFactory with $Bridge<SourceFactory> {
  $SourceFactory();

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'SourceFactory.', __$SourceFactory$new.call,
        isBridge: true);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.sourceFactory);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
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
    fields: {},
    methods: {
      'getSources': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(ExtensionLibTypes.source, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: true,
    wrap: false,
  );

  @override
  $Value? $bridgeGet(String identifier) {
    throw UnimplementedError('Unknown identifier $identifier');
  }

  @override
  void $bridgeSet(String identifier, $Value value) =>
      throw UnimplementedError();

  static const __$SourceFactory$new = $Function(_$SourceFactory$new);
  static $Value? _$SourceFactory$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $SourceFactory();
  }

  @override
  List<Source> getSources() {
    return ($_invoke('getSources', []) as List).cast<Source>();
  }
}
