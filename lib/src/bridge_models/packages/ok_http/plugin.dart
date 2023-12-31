import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';

import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/base_request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/client.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/types.dart';
import 'element.dart';
import 'document.dart';

class OkHttpPlugin extends EvalPlugin {
  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($BaseRequest.$declaration);
    registry.defineBridgeClass($OkHttpRequest.$declaration);
    registry.defineBridgeClass($OkHttpResponse.$declaration);
    registry.defineBridgeClass($OkHttpClient.$declaration);
    registry.defineBridgeClass($Element.$declaration);
    registry.defineBridgeClass($Document.$declaration);
    // registry.addSource($Document.dartSource);
    // registry.addSource($Element.dartSource);
    // registry.addSource($BaseRequest.dartSource);
    // registry.addSource($OkHttpRequest.dartSource);
    // registry.addSource($OkHttpResponse.dartSource);
    // registry.addSource($OkHttpClient.dartSource);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $OkHttpRequest.configureForRuntime(runtime);
    $OkHttpResponse.configureForRuntime(runtime);
    $OkHttpClient.configureForRuntime(runtime);
  }

  @override
  String get identifier => OkHttpDartTypes.OkHttpDartLib;
}
