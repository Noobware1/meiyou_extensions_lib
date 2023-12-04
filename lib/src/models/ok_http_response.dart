import 'dart:convert';

import 'package:meiyou_extenstions/src/models/document.dart';
import 'package:meiyou_extenstions/src/models/utils_models/app_utils.dart';

class OkHttpResponseObject {
  OkHttpResponseObject({
    required this.text,
    required this.statusCode,
    required this.headers,
    required this.hasError,
    required this.isRedirect,
  });

  final String text;
  final int statusCode;
  final bool hasError;
  final Map<String, String> headers;
  final bool isRedirect;

  DocumentObject get document => AppUtils.parseHtml(text);

  E json<E>(E Function(dynamic json) fromJson) {
    return fromJson(jsonDecode(text));
  }
}
