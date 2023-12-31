import 'dart:convert';

import 'package:meiyou_extensions_lib/src/models/document.dart';
import 'package:meiyou_extensions_lib/src/models/utils_models/app_utils.dart';

/// `okhttpResponseSrcObject` is a class that represents the response from an HTTP request.
///
/// It includes the following properties:
/// * `text`: A string representing the response body.
/// * `statusCode`: An integer representing the HTTP status code of the response.
/// * `headers`: A map representing the headers of the response.
/// * `hasError`: A boolean indicating whether the request has an error.
/// * `isRedirect`: A boolean indicating whether the request was a redirect.
class okhttpResponseSrcObject {
  okhttpResponseSrcObject({
    required this.text,
    required this.statusCode,
    required this.headers,
    required this.hasError,
    required this.isRedirect,
  });

  /// Response body.
  final String text;

  /// HTTP status code.
  final int statusCode;

  /// Response has an error.
  final bool hasError;

  /// Response headers.
  final Map<String, String> headers;

  /// Response was a redirect.
  final bool isRedirect;

  /// parses a html document into a `DocumentObject`.
  DocumentObject get document => AppUtils.parseHtml(text);

  /// decodes and parses json.
  E json<E>([E Function(dynamic json)? fromJson]) {
    return fromJson == null ? jsonDecode(text) : fromJson(jsonDecode(text));
  }

  /// decodes and parses json but returns null if an error occurs.
  E? jsonSafe<E>([E Function(dynamic json)? fromJson]) {
    try {
      return fromJson == null ? jsonDecode(text) : fromJson(jsonDecode(text));
    } catch (e) {
      return null;
    }
  }
}
