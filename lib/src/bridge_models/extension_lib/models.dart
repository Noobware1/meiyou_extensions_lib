import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

final modelsSource =
    DartSource('package:meiyou_extensions_lib/models.dart', _source());

String _source() {
  final buffer = StringBuffer();
  OkHttpPlugin().addAllExport(buffer);
  CryptoDartPlugin().addAllExports(buffer);
  HTMLPlugin().addAllExports(buffer);
  ExtensionLibPlugin.addAllExports(buffer, 'models');

  for (var element in [
    "export 'src/models/source/source.dart';",
    "export 'src/models/source/catalogue_source.dart';",
    "export 'src/models/source/source_factory.dart';",
    "export 'src/models/source/online/http_source.dart';",
    "export 'src/models/source/online/parsed_http_source.dart';",
    "export 'src/models/media.dart';",
    "export 'src/models/media_format.dart';",
    "export 'src/models/media_link.dart';",
    "export 'src/models/media_preview.dart';",
    "export 'src/models/home_page.dart';",
    "export 'src/models/media_details.dart';",
    "export 'src/models/media_content.dart';",
    "export 'src/models/search_page.dart';",
    "export 'src/models/quality.dart';",
    "export 'src/models/filter.dart';",
    "export 'src/models/filter_list.dart';",
  ]) {
    buffer.writeln(element);
  }

  return buffer.toString();
}
