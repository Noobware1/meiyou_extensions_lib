import 'dart:typed_data';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/models/source/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/models/source/source_factory.dart';

class ExtensionLoader extends Runtime {
  ExtensionLoader(ByteData evc) : super(evc) {
    setUpForRuntime(this);
  }

  ExtensionLoader.ofProgram(Program program) : super.ofProgram(program) {
    setUpForRuntime(this);
  }

  static void setUpForRuntime(Runtime runtime) {
    runtime
      ..grant(NetworkPermission.any)
      ..grant(FilesystemPermission.any)
      ..addPlugin(OkHttpPlugin())
      ..addPlugin(HTMLPlugin())
      ..addPlugin(CryptoDartPlugin())
      ..addPlugin(ExtensionLibPlugin());
  }

  dynamic getSource(String pkgName) {
    return executeLib('package:$pkgName/main.dart', 'getSource', []);
  }

  SourceFactory getSourceFactory(String pkgName) {
    return getSource(pkgName);
  }

  Source loadSource(String pkgName) {
    return getSource(pkgName);
  }

  CatalogueSource loadCatalogueSource(String pkgName) {
    return getSource(pkgName);
  }
}
