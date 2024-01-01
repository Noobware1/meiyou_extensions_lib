import 'dart:typed_data';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_security.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/eval_plugin.dart';

class ExtensionLoader {
  final Runtime runtime;

  ExtensionLoader(this.runtime) {
    setUpForRuntime(runtime);
  }

  factory ExtensionLoader.fromProgram(Program program) {
    final runtime = Runtime.ofProgram(program);
    return ExtensionLoader(runtime);
  }

  factory ExtensionLoader.getRuntime(Uint8List byteCode) {
    final Runtime runtime = Runtime(byteCode.buffer.asByteData());

    return ExtensionLoader(runtime);
  }

  static void setUpForRuntime(Runtime runtime) {
    runtime
      ..grant(NetworkPermission.any)
      ..grant(FilesystemPermission.any)
      ..addPlugin(ExtensionLibPlugin());
  }
}
