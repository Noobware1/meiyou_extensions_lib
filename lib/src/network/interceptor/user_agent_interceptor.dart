import 'package:okhttp/interceptor.dart';
import 'package:okhttp/response.dart';
import 'package:nice_dart/nice_dart.dart';

class UserAgentInterceptor implements Interceptor {
  UserAgentInterceptor(this.defaultUserAgentProvider);

  final String defaultUserAgentProvider;

  @override
  Future<Response> intercept(Chain chain) {
    final originalRequest = chain.request;

    if (originalRequest.headers.get("User-Agent").isEmptyOrNull) {
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
