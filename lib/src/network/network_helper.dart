import 'package:nice_dart/nice_dart.dart';
import 'package:meiyou_extensions_lib/src/network/interceptor/unhandled_exception_interceptor.dart';
import 'package:meiyou_extensions_lib/src/network/interceptor/user_agent_interceptor.dart';
import 'package:meiyou_extensions_lib/src/network/network_preferences.dart';
import 'package:okhttp/interceptor.dart';

import 'package:okhttp/okhttp.dart';

class NetworkHelper {
  NetworkHelper(NetworkPreferences preferences) : _preferences = preferences;

  final NetworkPreferences _preferences;

  late final OkHttpClient client = run(() {
    final verboseLogging = _preferences.verboseLogging().get();
    final builder = OkHttpClient.Builder()
        .addInterceptor(UnHandledExceptionInterceptor(verboseLogging))
        .addInterceptor(UserAgentInterceptor(defaultUserAgentProvider));

    if (verboseLogging) {
      final httpLoggingInterceptor =
          LoggingInterceptor(level: LogLevel.HEADERS);
      builder.addNetworkInterceptor(httpLoggingInterceptor);
    }

    return builder.build();
  });

  String get defaultUserAgentProvider => _preferences.defaultUserAgent().get();
}
