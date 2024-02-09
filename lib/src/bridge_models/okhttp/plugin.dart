import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/adapter/client_adapter.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/adapter/http_client_adapter.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/auth.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/byte_stream.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/call.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/cookie.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/interceptor/http_loggin_interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/interceptor/interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/internet_socket_address.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/okhttp_client.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/proxy.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/form_body.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/request/request_body.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/io_stream_response_body.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/real_response_body.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response_body.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/stream_response_body.dart';

class OkHttpPlugin extends EvalPlugin {
  void addAllExport(StringBuffer buffer) {
    [
      'import \'package:okhttp/okhttp.dart\';',
      'import \'package:okhttp/request.dart\';',
      'import \'package:okhttp/response.dart\';',
      'import \'package:okhttp/adapter.dart\';',
      'import \'package:okhttp/interceptor.dart\';',
    ].forEach((element) {
      buffer.writeln(element);
    });
  }

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    $OkHttpClient.configureForCompile(registry);
    $OkHttpClientBuilder.configureForCompile(registry);
    $Headers.configureForCompile(registry);
    $HeadersBuilder.configureForCompile(registry);
    // $Pair.configureForCompile(registry);
    $MediaType.configureForCompile(registry);
    $ByteStream.configureForCompile(registry);
    $Cookie.configureForCompile(registry);
    $CookieBuilder.configureForCompile(registry);
    $Call.configureForCompile(registry);
    $Request.configureForCompile(registry);
    $RequestBuilder.configureForCompile(registry);
    $RequestBody.configureForCompile(registry);
    $FormBody.configureForCompile(registry);
    $FormBodyBuilder.configureForCompile(registry);
    $Response.configureForCompile(registry);
    $ResponseBuilder.configureForCompile(registry);
    $ResponseBody.configureForCompile(registry);
    $RealResponseBody.configureForCompile(registry);
    $StreamResponseBody.configureForCompile(registry);
    $IOStreamResponseBody.configureForCompile(registry);
    $Interceptor.configureForCompile(registry);
    $Chain.configureForCompile(registry);
    $Logger.configureForCompile(registry);
    $Color.configureForCompile(registry);
    $LogLevel.configureForCompile(registry);
    $LoggingInterceptor.configureForCompile(registry);
    $ClientAdapter.configureForCompile(registry);
    $HttpClientAdapter.configureForCompile(registry);
    $Proxy.configureForCompile(registry);
    $ProxyType.configureForCompile(registry);
    $InternetSocketAddress.configureForCompile(registry);
    $PasswordAuthentication.configureForCompile(registry);

    registry.addSource(_okhttpSource);
    registry.addSource(_interceptorSource);
    registry.addSource(_responseSource);
    registry.addSource(_requestSource);
    registry.addSource(_adapterSource);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $OkHttpClient.configureForRuntime(runtime);
    $Headers.configureForRuntime(runtime);
    // $Pair.configureForRuntime(runtime);
    $MediaType.configureForRuntime(runtime);
    $ByteStream.configureForRuntime(runtime);
    $Cookie.configureForRuntime(runtime);
    $Request.configureForRuntime(runtime);
    $RequestBody.configureForRuntime(runtime);
    $FormBody.configureForRuntime(runtime);
    $Response.configureForRuntime(runtime);
    $ResponseBody.configureForRuntime(runtime);
    $RealResponseBody.configureForRuntime(runtime);
    $IOStreamResponseBody.configureForRuntime(runtime);
    $Interceptor.configureForRuntime(runtime);
    $Logger.configureForRuntime(runtime);
    $Color.configureForRuntime(runtime);
    $LogLevel.configureForRuntime(runtime);
    $LoggingInterceptor.configureForRuntime(runtime);
    $HttpClientAdapter.configureForRuntime(runtime);
    $Proxy.configureForRuntime(runtime);
    $ProxyType.configureForRuntime(runtime);
    $InternetSocketAddress.configureForRuntime(runtime);
    $PasswordAuthentication.configureForRuntime(runtime);
  }

  @override
  String get identifier => 'package:okhttp';
}

final _okhttpSource = DartSource('package:okhttp/okhttp.dart', '''
import 'package:html/dom.dart';
export 'src/mediatype';
export 'src/headers.dart';
export 'src/cookie.dart';
export 'src/call.dart';
export 'src/okhttp_client.dart';
export 'src/byte_stream.dart';
export 'src/proxy.dart';
export 'src/auth.dart';
export 'src/internet_socket_address.dart';

''');

final _adapterSource = DartSource('package:okhttp/adapter.dart', '''
import 'package:html/dom.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';
export 'src/client_adapter.dart';
export 'src/adapters/http_client_adapter.dart';
''');

final _interceptorSource = DartSource('package:okhttp/interceptor.dart', '''
import 'package:html/dom.dart';
import 'package:okhttp/response.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/adapter.dart';
export 'src/interceptor.dart';
export 'src/interceptors/http_logging_interceptor.dart';

''');

final _responseSource = DartSource('package:okhttp/response.dart', '''
import 'package:html/dom.dart';
import 'package:okhttp/okhttp.dart';
export 'src/response.dart';
export 'src/response_body.dart';
export 'src/response_body/stream_response_body.dart';
export 'src/response_body/io_response_body.dart';
export 'src/response_body/real_response_body.dart';
''');

final _requestSource = DartSource('package:okhttp/request.dart', '''
import 'package:okhttp/okhttp.dart';
import 'package:html/dom.dart';

export 'src/request.dart';
export 'src/request_body.dart';
export 'src/form_body.dart';
''');

class OkHttpTypes {
  //////////////////////////// OkHttp ////////////////////////////////////

  /// Bridge type spec for [$OkHttpClient]
  static const okHttpClient =
      BridgeTypeSpec('package:okhttp/src/okhttp_client.dart', 'OkHttpClient');

  /// Bridge type spec for [$OkHttpClientBuilder]
  static const okHttpClientBuilder = BridgeTypeSpec(
      'package:okhttp/src/okhttp_client.dart', 'OkHttpClientBuilder');

  /// Bridge type spec for [$Headers]
  static const headers =
      BridgeTypeSpec('package:okhttp/src/headers.dart', 'Headers');

  /// Bridge type spec for [$HeadersBuilder]
  static const headersBuilder =
      BridgeTypeSpec('package:okhttp/src/headers.dart', 'HeadersBuilder');

  /// Bridge type spec for [$Pair]
  static const pair = BridgeTypeSpec('package:okhttp/src/headers.dart', 'Pair');

  /// Bridge type spec for [$MediaType]
  static const mediaType =
      BridgeTypeSpec('package:okhttp/src/mediatype', 'MediaType');

  /// Bridge type spec for [$ByteStream]
  static const byteStream =
      BridgeTypeSpec('package:okhttp/src/byte_stream.dart', 'ByteStream');

  /// Bridge type spec for [$Cookie]
  static const cookie =
      BridgeTypeSpec('package:okhttp/src/cookie.dart', 'Cookie');

  /// Bridge type spec for [$CookieBuilder]
  static const cookieBuilder =
      BridgeTypeSpec('package:okhttp/src/cookie.dart', 'CookieBuilder');

  /// Bridge type spec for [$Call]
  static const call = BridgeTypeSpec('package:okhttp/src/call.dart', 'Call');

  static const passwordAuthentication =
      BridgeTypeSpec('package:okhttp/src/auth.dart', 'PasswordAuthentication');

  /// Bridge type spec for [$Proxy]
  static const proxy = BridgeTypeSpec('package:okhttp/src/proxy.dart', 'Proxy');

  /// Bridge type spec for [$ProxyType]
  static const proxyType =
      BridgeTypeSpec('package:okhttp/src/proxy.dart', 'ProxyType');

  /// Bridge type spec for [$InternetSocketAddress]
  static const internetSocketAddress = BridgeTypeSpec(
      'package:okhttp/src/internet_socket_address.dart',
      'InternetSocketAddress');

  /// Bridge type spec for [$CookieJar]
  static const cookieJar =
      BridgeTypeSpec('package:okhttp/src/cookie_jar.dart', 'CookieJar');
  //////////////////////////////////////////////////////////////////////////////
  
  /////////////////////////////  Dns /////////////////////////////////////////
  
  /// Bridge type spec for [$Dns]
  static const dns = BridgeTypeSpec('package:okhttp/src/dns.dart', 'Dns');
  
  //////////////////////////////////////////////////////////////////////////////
  

  ///////////////////////////  Request /////////////////////////////////////////

  /// Bridge type spec for [$RequestBody]
  static const requestBody =
      BridgeTypeSpec('package:okhttp/src/request_body.dart', 'RequestBody');

  /// Bridge type spec for [$FormBody]
  static const formBody =
      BridgeTypeSpec('package:okhttp/src/form_body.dart', 'FormBody');

  /// Bridge type spec for [$FormBodyBuilder]
  static const formBodyBuilder =
      BridgeTypeSpec('package:okhttp/src/form_body.dart', 'FormBodyBuilder');

  /// Bridge type spec for [$Request]
  static const request =
      BridgeTypeSpec('package:okhttp/src/request.dart', 'Request');

  /// Bridge type spec for [$RequestBuilder]
  static const requestBuilder =
      BridgeTypeSpec('package:okhttp/src/request.dart', 'RequestBuilder');

  //////////////////////////////////////////////////////////////////////////////

  ///////////////////////////// Response ///////////////////////////////////////

  /// Bridge type spec for [$ResponseBody]
  static const responseBody =
      BridgeTypeSpec('package:okhttp/src/response_body.dart', 'ResponseBody');

  /// Bridge type spec for [$RealResponseBody]
  static const realResponseBody = BridgeTypeSpec(
      'package:okhttp/src/response_body/real_response_body.dart',
      'RealResponseBody');

  /// Bridge type spec for [$StreamResponseBody]
  static const streamResponseBody = BridgeTypeSpec(
      'package:okhttp/src/response_body/stream_response_body.dart',
      'StreamResponseBody');

  /// Bridge type spec for [$IOStreamResponseBody]
  static const iOStreamResponseBody = BridgeTypeSpec(
      'package:okhttp/src/response_body/io_response_body.dart',
      'IOStreamResponseBody');

  /// Bridge type spec for [$Response]
  static const response =
      BridgeTypeSpec('package:okhttp/src/response.dart', 'Response');

  /// Bridge type spec for [$ResponseBuilder]
  static const responseBuilder =
      BridgeTypeSpec('package:okhttp/src/response.dart', 'ResponseBuilder');

  //////////////////////////////////////////////////////////////////////////////

  ////////////////////////////// Interceptor ///////////////////////////////////

  /// Bridge type spec for [$Interceptor]
  static const interceptor =
      BridgeTypeSpec('package:okhttp/src/interceptor.dart', 'Interceptor');

  /// Bridge type spec for [$Chain]
  static const chain =
      BridgeTypeSpec('package:okhttp/src/interceptor.dart', 'Chain');

  /// Bridge type spec for [$Logger]
  static const logger = BridgeTypeSpec(
      'package:okhttp/src/interceptors/http_logging_interceptor.dart',
      'Logger');

  /// Bridge type spec for [$LoggingInterceptor]
  static const loggingInterceptor = BridgeTypeSpec(
      'package:okhttp/src/interceptors/http_logging_interceptor.dart',
      'LoggingInterceptor');

  /// Bridge type spec for [$Color]
  static const color = BridgeTypeSpec(
      'package:okhttp/src/interceptors/http_logging_interceptor.dart', 'Color');

  /// Bridge type spec for [$LogLevel]
  static const logLevel = BridgeTypeSpec(
      'package:okhttp/src/interceptors/http_logging_interceptor.dart',
      'LogLevel');

  // /// Bridge type spec for [$DownloadingInterceptor]
  // static const downloadingInterceptor = BridgeTypeSpec(
  //     'package:okhttp/src/interceptors/downloading_interceptor.dart',
  //     'DownloadingInterceptor');

  /// Bridge type spec for [$DownloadedBody]
  static const downloadedBody = BridgeTypeSpec(
      'package:okhttp/src/interceptors/downloading_interceptor.dart',
      'DownloadedBody');

  //////////////////////////////////////////////////////////////////////////////

  ///////////////////////////// Adapter ////////////////////////////////////////

  /// Bridge type spec for [$ClientAdapter]
  static const clientAdapter =
      BridgeTypeSpec('package:okhttp/src/client_adapter.dart', 'ClientAdapter');

  /// Bridge type spec for [$HttpClientAdapter]
  static const httpClientAdapter = BridgeTypeSpec(
      'package:okhttp/src/adapters/http_client_adapter.dart',
      'HttpClientAdapter');

  //////////////////////////////////////////////////////////////////////////////
}
