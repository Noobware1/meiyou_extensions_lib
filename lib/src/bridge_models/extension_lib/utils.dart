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
  ExtensionLibPlugin().addAllExports(buffer, 'utils');
  for (var element in [
    'import \'dart:convert\';',
    'export \'src/iterable.dart\';',
    'export \'src/list.dart\';',
    'export \'src/scopes.dart\';',
    'export \'src/string.dart\';',
    'export \'src/result.dart\';',
    'export \'src/app_utils.dart\';',
    'export \'src/builders.dart\';',
  ]) {
    buffer.writeln(element);
  }

  return buffer.toString();
}

final utilsSource =
    DartSource('package:meiyou_extensions_lib/utils.dart', _source());
