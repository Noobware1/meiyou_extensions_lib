// import 'package:dart_eval/dart_eval_bridge.dart';

// final networkource =
//     DartSource('package:meiyou_extensions_lib/network.dart', '''
// import 'package:okhttp/okhttp.dart';
// import 'package:okhttp/request.dart';

// ''');

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
  ExtensionLibPlugin().addAllExports(buffer, 'network');
  [
    'export \'src/requests.dart\';',
    'export \'src/network/network_preferences.dart\';',
    'export \'src/network/network_helper.dart\';',
    'export \'src/network/interceptor/unhandled_exception_interceptor.dart\';',
    'export \'src/network/interceptor/user_agent_interceptor.dart\';',
    'export \'src/network/interceptor/interceptor_impl.dart\';',
  ].forEach((element) {
    buffer.writeln(element);
  });

  return buffer.toString();
}

final networkSource =
    DartSource('package:meiyou_extensions_lib/network.dart', _source());
