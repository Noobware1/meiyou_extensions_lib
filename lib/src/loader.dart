import 'dart:typed_data';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/eval_plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/plugin.dart';

class ExtensionLoader {
  ExtensionLoader(Runtime runtime) {
    setUpFroRuntime(runtime);
  }

  factory ExtensionLoader.fromProgram(Program program) {
    final runtime = Runtime.ofProgram(program);
    return ExtensionLoader(runtime);
  }

  factory ExtensionLoader.getRuntime(Uint8List byteCode) {
    final Runtime runtime = Runtime(byteCode.buffer.asByteData());

    return ExtensionLoader(runtime);
  }

  static void setUpFroRuntime(Runtime runtime) {
    runtime
      ..grant(NetworkPermission.any)
      ..grant(FilesystemPermission.any)
      ..addPlugin(OkHttpPlugin())
      ..addPlugin(CryptoDartPlugin())
      ..addPlugin(ExtensionLibPlugin());
  }
}
