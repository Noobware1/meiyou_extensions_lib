import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:nice_dart/nice_dart.dart';

class $BuildersUtils {
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeTopLevelFunction(buildString);
    registry.defineBridgeTopLevelFunction(buildList);
  }

  static const _lib = 'package:meiyou_extensions_lib/src/builders.dart';

  static void configuresForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(_lib, 'buildString', const _$BuildString().call);
    runtime.registerBridgeFunc(_lib, 'buildList', const _$BuildList().call);
  }

  static const buildString = BridgeFunctionDeclaration(
    _lib,
    'buildString',
    BridgeFunctionDef(
        returns: BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string),
        ),
        params: [
          BridgeParameter(
            'action',
            BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.function),
            ),
            false,
          ),
        ]),
  );

  static const buildList = BridgeFunctionDeclaration(
    _lib,
    'buildList',
    BridgeFunctionDef(
        returns: BridgeTypeAnnotation(
          BridgeTypeRef(
            CoreTypes.list,
            [BridgeTypeRef.ref('E')],
          ),
        ),
        params: [
          BridgeParameter(
            'action',
            BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.function),
            ),
            false,
          ),
        ],
        generics: {
          'E': BridgeGenericParam(),
        }),
  );
}

class _$BuildString implements EvalCallable {
  const _$BuildString();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final action = args[0] as EvalCallable;
    return $String(buildString((it) {
      action.call(runtime, null, [$StringBuffer.wrap(it)]);
    }));
  }
}

class _$BuildList implements EvalCallable {
  const _$BuildList();

  @override
  $Value? call(Runtime runtime, $Value? target, List<$Value?> args) {
    final action = args[0] as EvalCallable;
    return $List.wrap(buildList((it) {
      action.call(runtime, null, [$List.wrap(it)]);
    }));
  }
}
