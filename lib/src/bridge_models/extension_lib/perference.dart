import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

String _source() {
  final buffer = StringBuffer();
  OkHttpPlugin().addAllExport(buffer);
  CryptoDartPlugin().addAllExports(buffer);
  ExtensionLibPlugin().addAllExports(buffer, 'preference');
  [
    'export \'src/preference/perference.dart\';',
    'export \'src/preference/perference_store.dart\';',
  ].forEach((element) {
    buffer.writeln(element);
  });

  print(buffer.toString());
  return buffer.toString();
}

final preferenceSource =
    DartSource('package:meiyou_extensions_lib/preference.dart', _source());
