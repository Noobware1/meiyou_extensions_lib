import 'package:okhttp/interceptor.dart';
import 'package:okhttp/response.dart';

extension on String? {
  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }
}

class UserAgentInterceptor implements Interceptor {
  UserAgentInterceptor(this.defaultUserAgentProvider);

  final String defaultUserAgentProvider;

  @override
  Future<Response> intercept(Chain chain) {
    final originalRequest = chain.request;

    if (originalRequest.headers.get("User-Agent").isNullOrEmpty()) {
      final newRequest = originalRequest
          .newBuilder()
          .removeHeader("User-Agent")
          .addHeader("User-Agent", defaultUserAgentProvider)
          .build();
      return chain.proceed(newRequest);
    } else {
      return chain.proceed(originalRequest);
    }
  }
}
