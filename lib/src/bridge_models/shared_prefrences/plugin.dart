import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/shared_prefrences/shared_preferences.dart';

class SharedPreferencesPlugin extends EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    $SharedPreferences.configureForCompile(registry);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $SharedPreferences.configureForRuntime(runtime);
  }

  @override
  String get identifier => 'package:shared_preferences';
}

class SharedPreferencesTypes {
  /// Bridge type spec for [$SharedPreferences]
  static const sharedPreferences = BridgeTypeSpec(
      'package:shared_preferences/shared_preferences.dart',
      'SharedPreferences');
}
