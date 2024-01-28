import 'package:crypto_dart/crypto_dart.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

final okhttpExtensionsSource = DartSource(
    'package:meiyou_extensions_lib/okhttp_extensions.dart', _source());

String _source() {
  final buffer = StringBuffer();
  CryptoDartPlugin().addAllExports(buffer);
  OkHttpPlugin().addAllExport(buffer);
  HTMLPlugin().addAllExports(buffer);
  ExtensionLibPlugin().addAllExports(buffer, 'okhttp_extensions');

  return buffer.toString();
}
