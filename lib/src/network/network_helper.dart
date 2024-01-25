import 'package:dartx/dartx.dart';
import 'package:meiyou_extensions_lib/src/network/interceptor/unhandled_exception_interceptor.dart';
import 'package:meiyou_extensions_lib/src/network/interceptor/user_agent_interceptor.dart';
import 'package:meiyou_extensions_lib/src/network/network_preferences.dart';
import 'package:okhttp/interceptor.dart';

import 'package:okhttp/okhttp.dart';

class NetworkHelper {
  NetworkHelper(NetworkPreferences preferences) : _preferences = preferences;

  final NetworkPreferences _preferences;

  late final OkHttpClient client = run(() {
    final builder = OkHttpClient.Builder()
        .addInterceptor(UnHandledExceptionInterceptor())
        .addInterceptor(UserAgentInterceptor(defaultUserAgentProvider));
    // .addNetworkInterceptor(IgnoreGzipInterceptor())
    // .addNetworkInterceptor(BrotliInterceptor)

    if (_preferences.verboseLogging().get()) {
      final httpLoggingInterceptor =
          LoggingInterceptor(level: LogLevel.HEADERS);
      builder.addNetworkInterceptor(httpLoggingInterceptor);
    }
    return builder.build();
  });

  String get defaultUserAgentProvider => _preferences.defaultUserAgent().get();

  // val client: OkHttpClient = run {
  //     val builder = OkHttpClient.Builder()
  //         .cookieJar(cookieJar)
  //         .connectTimeout(30, TimeUnit.SECONDS)
  //         .readTimeout(30, TimeUnit.SECONDS)
  //         .callTimeout(2, TimeUnit.MINUTES)
  //         .cache(
  //             Cache(
  //                 directory = File(context.cacheDir, "network_cache"),
  //                 maxSize = 5L * 1024 * 1024, // 5 MiB
  //             ),
  //         )
  //         .addInterceptor(UncaughtExceptionInterceptor())
  //         .addInterceptor(UserAgentInterceptor(::defaultUserAgentProvider))
  //         .addNetworkInterceptor(IgnoreGzipInterceptor())
  //         .addNetworkInterceptor(BrotliInterceptor)
}
