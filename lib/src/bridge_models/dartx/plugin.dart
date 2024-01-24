import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/app_utils.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/builders.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/result.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/scopes.dart';
import 'iterable.dart';
import 'list.dart';

class DartxPlugin extends EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    $AppUtils.configureForCompileTime(registry);
    $Scopes.configureForCompileTime(registry);
    $IterableUtils.configureForCompileTime(registry);
    $ListUtils.configureForCompileTime(registry);
    $BuildersUtils.configureForCompile(registry);
    $Result.configureForCompileTime(registry);
    $ResultsUtils.configureForCompileTime(registry);
    $Failure.configureForCompileTime(registry);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $AppUtils.configureForRuntime(runtime);
    $Scopes.configureForRuntime(runtime);
    $IterableUtils.configureForRuntime(runtime);
    $ListUtils.configureForRuntime(runtime);
    $BuildersUtils.configuresForRuntime(runtime);
    $Result.configureForRuntime(runtime);
    $ResultsUtils.configureForRuntime(runtime);
  }

  @override
  String get identifier => utilsLib;
}

const utilsLib = 'package:meiyou_extensions_lib/utils.dart';

class DartXTypes {
  /// Bridge type spec for [$IterableUtils]
  static const iterableUtils = BridgeTypeSpec(utilsLib, 'IterableUtils');

  /// Bridge type spec for [$Scopes]
  static const scopes = BridgeTypeSpec(utilsLib, 'Scopes');

  /// Bridge type spec for [$ListUtils]
  static const listUtils = BridgeTypeSpec(utilsLib, 'ListUtils');

  /// Bridge type spec for [$StringUtils]
  static const stringUtils = BridgeTypeSpec(utilsLib, 'StringUtils');

  /// Bridge type spec for [$Result]
  static const result = BridgeTypeSpec(utilsLib, 'Result');

  /// Bridge type spec for [$Failure]
  static const failure = BridgeTypeSpec(utilsLib, 'Failure');

  /// Bridge type spec for [$ResultsUtils]
  static const resultsUtils = BridgeTypeSpec(utilsLib, 'ResultsUtils');

  static const appUtils = BridgeTypeSpec(utilsLib, 'AppUtils');
}