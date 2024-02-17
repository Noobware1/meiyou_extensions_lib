import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/interfaces/source.dart';

import 'package:meiyou_extensions_lib/src/models/interfaces/source_factory.dart';
import 'package:meiyou_extensions_lib/src/network/network_helper.dart';

class $SourceFactory extends SourceFactory with $Bridge<SourceFactory> {
  static const $type = BridgeTypeRef(ExtensionLibTypes.sourceFactory);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'SourceFactory.', $new.call,
        isBridge: true);
  }

  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
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
          params: [
            BridgeParameter(
                'networkHelper',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.networkHelper)),
                false),
          ],
        ),
      ),
    },
    bridge: true,
  );

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
  List<Source> getSources(NetworkHelper networkHelper) {
    return ($_invoke('getSources', [$NetworkHelper.wrap(networkHelper)])
            as List)
        .cast<Source>();
  }
}
