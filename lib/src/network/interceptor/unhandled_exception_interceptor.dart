import 'package:okhttp/interceptor.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/response.dart';

class UnHandledExceptionInterceptor implements Interceptor {
  @override
  Future<Response> intercept(Chain chain) {
    try {
      return chain.proceed(chain.request);
    } catch (e) {
      if (e is OkHttpException) {
        rethrow;
      } else {
        throw OkHttpException(e.toString());
      }
    }
  }
}
