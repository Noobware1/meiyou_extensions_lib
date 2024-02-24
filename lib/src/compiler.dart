import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

class ExtensionComplier extends Compiler {
  ExtensionComplier(ExtensionLibPluginOverrides overrides) {
    addPlugin(OkHttpPlugin());
    addPlugin(HTMLPlugin());
    addPlugin(CryptoDartPlugin());
    addPlugin(ExtensionLibPlugin(overrides));
  }
}
