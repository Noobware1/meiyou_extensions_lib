/// `ExtractorLink` is a class that represents a link extracted from a source.
///
/// It includes the following properties:
/// * `name`: A string representing the name of the link.
/// * `url`: A string representing the URL of the link.
/// * `headers`: An optional map representing the headers of the link.
/// * `referer`: An optional string representing the referer of the link.
/// * `extra`: An optional map representing any extra data associated with the link.
///
class ExtractorLink {
  ExtractorLink({
    this.name = '',
    this.url = '',
    this.headers,
    this.referer,
    this.extra,
  });

  final String name;
  final String url;
  final Map<String, String>? headers;
  final String? referer;
  final Map<String, dynamic>? extra;

  @override
  String toString() {
    return 'ExtractorLink(name: $name, url: $url, headers: $headers, referer: $referer, extra: $extra)';
  }
}
