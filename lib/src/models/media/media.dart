// ignore_for_file: constant_identifier_names

/// An enumeration of the different types of media.
enum MediaType {
  /// Represents a video.
  Video,

  /// Represents an image.
  Image,

  /// Represents a text.
  Text,
}

/// A class that represents a media item.
///
/// The `Media` class has the following properties:
/// * `mediaType`: A `MediaType` value representing the type of the media.
/// * `headers`: A map of strings representing the headers of the media.
/// * `extra`: A map of dynamic values representing extra data of the media.
class Media {
  Media({this.mediaType, this.headers, this.extra});

  /// A `MediaType` value representing the type of the media.
  MediaType? mediaType;

  /// A map of strings representing the headers of the media.
  Map<String, String>? headers;

  /// A map of dynamic values representing extra data of the media.
  Map<String, dynamic>? extra;

  @override
  String toString() {
    return 'Media(mediaType: $mediaType, headers: $headers, extra: $extra)';
  }
}
