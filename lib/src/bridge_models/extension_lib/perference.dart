import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

String _source() {
  final buffer = StringBuffer();
  OkHttpPlugin().addAllExport(buffer);
  CryptoDartPlugin().addAllExports(buffer);
  HTMLPlugin().addAllExports(buffer);
  ExtensionLibPlugin.addAllExports(buffer, 'preference');
  for (var element in [
    'export \'src/preference/preferences/dilog_preference.dart\';',
    'export \'src/preference/preferences/two_state_preference.dart\';',
    'export \'src/preference/preferences/preference_data.dart\';',
    'export \'src/preference/shared_preferences.dart\';',
    'export \'src/preference/preference.dart\';',
    'export \'src/preference/preference_store.dart\';',
  ]) {
    buffer.writeln(element);
  }

  return buffer.toString();
}

final preferenceSource =
    DartSource('package:meiyou_extensions_lib/preference.dart', _source());
