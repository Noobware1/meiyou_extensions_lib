import 'dart:typed_data';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/network.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

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

  ExtractorApi loadExtractorApi(
      String library, String name, ExtractorLink link) {
    return executeLib(library, name, [$ExtractorLink.wrap(link)]);
  }

  HttpSource loadHttpSource(
      String library, String name, NetworkHelper networkHelper) {
    return executeLib(library, name, [$NetworkHelper.wrap(networkHelper)]);
  }

  ParsedHttpSource loadParsedHttpSource(
      String library, String name, NetworkHelper networkHelper) {
    return executeLib(library, name, [$NetworkHelper.wrap(networkHelper)]);
  }

  Source loadSource(String library, String name) {
    return executeLib(library, name, []);
  }

  CatalogueSource loadCatalogueSource(String library, String name) {
    return executeLib(library, name, []);
  }
}
