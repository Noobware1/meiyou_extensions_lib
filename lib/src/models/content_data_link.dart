import 'package:equatable/equatable.dart';
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

  @override
  String toString() {
    return 'ContentDataLink(name: $name, data: $data, headers: $headers, referer: $referer, extra: $extra)';
  }

  @override
  List<Object?> get props => [name, data, headers, referer, extra];
}
