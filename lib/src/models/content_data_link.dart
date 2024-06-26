import 'package:equatable/equatable.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:okhttp/okhttp.dart';

class ContentDataLink extends Equatable {
  final String name;
  final String data;
  final Headers? headers;
  final String? referer;
  final Map<String, dynamic>? extra;

  const ContentDataLink({
    required this.name,
    required this.data,
    this.headers,
    this.referer,
    this.extra,
  });

  factory ContentDataLink.fromJson(Map<String, dynamic> json) {
    return ContentDataLink(
      name: json['name'] as String,
      data: json['data'] as String,
      headers:
          json['headers'] != null ? headersFromJson(json['headers']) : null,
      referer: json['referer'] as String?,
      extra: (json['extra'] as Map?)?.cast<String, dynamic>(),
    );
  }

  ContentDataLink copyWith({
    String? name,
    String? data,
    Headers? headers,
    String? referer,
    Map<String, dynamic>? extra,
  }) {
    return ContentDataLink(
      name: name ?? this.name,
      data: data ?? this.data,
      headers: headers ?? this.headers,
      referer: referer ?? this.referer,
      extra: extra ?? this.extra,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'data': data,
      'headers': headers?.toMap(),
      'referer': referer,
      'extra': extra,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [name, data, headers, referer, extra];
}
