class ExtractorLink {
  ExtractorLink({
    required this.name,
    required this.url,
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
