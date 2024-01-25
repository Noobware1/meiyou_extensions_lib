import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/app_utils.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/builders.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/result.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/scopes.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/dartx/string.dart';
import 'iterable.dart';
import 'list.dart';

class DartxPlugin extends EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    $AppUtils.configureForCompileTime(registry);
    $Scopes.configureForCompileTime(registry);
    $StringUtils.configureForCompileTime(registry);
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
    $StringUtils.configureForRuntime(runtime);
  }

  @override
  String get identifier => 'package:meiyou_extensions_lib/utils.dart';
}

class DartXTypes {
  /// Bridge type spec for [$IterableUtils]
  static const iterableUtils = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/iterable.dart', 'IterableUtils');

  /// Bridge type spec for [$Scopes]
  static const scopes =
      BridgeTypeSpec('package:meiyou_extensions_lib/src/scopes.dart', 'Scopes');

  /// Bridge type spec for [$ListUtils]
  static const listUtils = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/list.dart', 'ListUtils');

  /// Bridge type spec for [$StringUtils]
  static const stringUtils = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/string.dart', 'StringUtils');

  /// Bridge type spec for [$Result]
  static const result =
      BridgeTypeSpec('package:meiyou_extensions_lib/src/result.dart', 'Result');

  /// Bridge type spec for [$Failure]
  static const failure = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/result.dart', 'Failure');

  /// Bridge type spec for [$ResultsUtils]
  static const resultsUtils = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/result.dart', 'ResultsUtils');

  static const appUtils = BridgeTypeSpec(
      'package:meiyou_extensions_lib/src/app_utils.dart', 'AppUtils');
}
