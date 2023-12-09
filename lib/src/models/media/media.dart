// ignore_for_file: constant_identifier_names

enum MediaType {
  Video,
  Image,
  Text,
}

class Media {
  MediaType? mediaType;
  Map<String, String>? headers;
  Map<String, dynamic>? extra;

  Media({this.mediaType, this.headers, this.extra});

  @override
  String toString() {
    return 'Media(mediaType: $mediaType, headers: $headers, extra: $extra)';
  }
}
