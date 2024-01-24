
import 'dart:convert';
import 'package:dartx/dartx.dart';
import 'package:okhttp/response.dart';


extension ResponseBodyExtensions on ResponseBody {
  T json<T>([T Function(dynamic json)? fromJson]) {
    return fromJson != null ? fromJson(jsonDecode(string)) : jsonDecode(string);
  }

  T? jsonSafe<T>([T Function(dynamic json)? fromJson]) {
    return runCatching(() => json(fromJson)).getOrNull();
  }

  
}
