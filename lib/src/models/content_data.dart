import 'package:equatable/equatable.dart';
import 'package:meiyou_extensions_lib/src/models/quality.dart';
import 'package:meiyou_extensions_lib/src/utils/utils.dart';
import 'package:nice_dart/nice_dart.dart';
import 'package:okhttp/okhttp.dart';

abstract class ContentData extends Equatable {
  final ContentDataType type;
  final Headers? headers;
  final Map<String, dynamic>? extra;

  const ContentData({required this.type, this.headers, this.extra});

  factory ContentData.fromJson(Map<String, dynamic> json) {
    switch (ContentDataType.values[json['type']]) {
      case ContentDataType.Video:
        return Video.fromJson(json);
      // case ContentDataType.Manga:
      //   return Manga.fromJson(json);
      // case ContentDataType.Novel:
      //   return Novel.fromJson(json);
      default:
        throw Exception('Invalid ContentDataType');
    }
  }

  Map<String, dynamic> toJson();

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }
}

enum ContentDataType {
  Video,
  Manga,
  Novel,
}

/// A class that represents a video.
///
/// The `Video` class extends the `Media` class and adds a list of `source` objects and a list of `Subtitle` objects.
///
/// This class has the following properties:
/// * `sources`: A list of `source` objects representing the sources of the video.
/// * `subtitles`: An optional list of `Subtitle` objects representing the subtitles of the video.
class Video extends ContentData {
  const Video({
    this.sources = const [],
    this.subtitles,
    super.extra,
    super.headers,
  }) : super(type: ContentDataType.Video);

  /// A list of `VideoSource` objects representing the sources of the video.
  final List<VideoSource> sources;

  /// An optional list of `Subtitle` objects representing the subtitles of the video.
  final List<Subtitle>? subtitles;

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      sources:
          (json['sources'] as List).mapList((e) => VideoSource.fromJson(e)),
      subtitles:
          (json['subtitles'] as List?)?.mapList((e) => Subtitle.fromJson(e)),
      extra: (json['extra'] as Map?)?.cast<String, dynamic>(),
      headers:
          json['headers'] != null ? headersFromJson(json['headers']) : null,
    );
  }

  Video copyWith({
    List<VideoSource>? sources,
    List<Subtitle>? subtitles,
    Map<String, dynamic>? extra,
    Headers? headers,
  }) {
    return Video(
      sources: sources ?? this.sources,
      subtitles: subtitles ?? this.subtitles,
      extra: extra ?? this.extra,
      headers: headers ?? this.headers,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.index,
      'sources': sources.mapList((e) => e.toJson()),
      'subtitles': subtitles?.mapList((e) => e.toJson()),
      'extra': extra,
      'headers': headers?.toMap(),
    };
  }

  @override
  List<Object?> get props => [type, sources, subtitles, extra, headers];
}

/// An enumeration of the different video formats.
enum VideoFormat {
  /// Represents the HTTP Live Streaming (HLS) video format.
  hls,

  /// Represents the MPEG-4 Part 14 (MP4) video format.
  mp4,

  /// Represents the Dynamic Adaptive Streaming over HTTP (DASH) video format.
  dash,

  /// Represents the BitTorrent (torrent) video format.
  torrent,

  /// Represents other video formats not listed above.
  other,
}

/// A class that represents a source of a video.
///
/// The `VideoSource` class has the following properties:
/// * `url`: A string representing the URL of the video source.
/// * `format`: A `VideoFormat` value representing the format of the video source.
/// * `quality`: An optional `VideoQuality` object representing the quality of the video source.
/// * `isBackup`: A boolean indicating whether the video source is a backup.
/// * `title`: An optional string representing the title of the video source.
class VideoSource extends Equatable {
  const VideoSource({
    this.url = '',
    this.format = VideoFormat.other,
    this.quality,
    this.title,
    this.isBackup = false,
  });

  const VideoSource.hls({
    this.url = '',
    this.title,
    this.isBackup = false,
  })  : format = VideoFormat.hls,
        quality = Quality.hlsMaster;

  /// A string representing the URL of the video source.
  final String url;

  /// A `VideoFormat` value representing the format of the video source.
  final VideoFormat format;

  /// An optional `VideoQuality` object representing the quality of the video source.
  final Quality? quality;

  /// A boolean indicating whether the video source is a backup.
  final bool isBackup;

  /// An optional string representing the title of the video source.
  final String? title;

  factory VideoSource.fromJson(Map<String, dynamic> json) {
    return VideoSource(
      url: json['url'] as String,
      format: VideoFormat.values[json['format']],
      quality:
          json['quality'] != null ? Quality.fromJson(json['quality']) : null,
      title: json['title'] as String?,
      isBackup: json['isBackup'] as bool,
    );
  }

  VideoSource copyWith({
    String? url,
    VideoFormat? format,
    Quality? quality,
    String? title,
    bool? isBackup,
  }) {
    return VideoSource(
      url: url ?? this.url,
      format: format ?? this.format,
      quality: quality ?? this.quality,
      title: title ?? this.title,
      isBackup: isBackup ?? this.isBackup,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'format': format.index,
      'quality': quality?.toJson(),
      'title': title,
      'isBackup': isBackup,
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [url, format, quality, title, isBackup];
}

/// A class that represents a subtitle.
///
/// The `Subtitle` class has the following properties:
/// * `url`: A string representing the URL of the subtitle.
/// * `format`: A `SubtitleFormat` value representing the format of the subtitle.
/// * `language`: An optional string representing the language of the subtitle.
/// * `headers`: An optional map of strings representing the headers of the subtitle.
class Subtitle extends Equatable {
  const Subtitle({
    this.url = '',
    this.format,
    this.language,
    this.headers,
  });

  /// A string representing the URL of the subtitle.
  final String url;

  /// A `SubtitleFormat` value representing the format of the subtitle.
  final SubtitleFormat? format;

  /// An optional string representing the language of the subtitle.
  final String? language;

  /// An optional map of strings representing the headers of the subtitle.
  final Headers? headers;

  /// A `Subtitle` object representing no subtitle.
  static const Subtitle noSubtitle =
      Subtitle(url: '', format: null, language: 'No Subtitle', headers: null);

  factory Subtitle.fromJson(Map<String, dynamic> json) {
    return Subtitle(
      url: json['url'] as String,
      format:
          json['format'] != null ? SubtitleFormat.values[json['format']] : null,
      language: json['language'] as String?,
      headers:
          json['headers'] != null ? headersFromJson(json['headers']) : null,
    );
  }

  Subtitle copyWith({
    String? url,
    SubtitleFormat? format,
    String? language,
    Headers? headers,
  }) {
    return Subtitle(
      url: url ?? this.url,
      format: format ?? this.format,
      language: language ?? this.language,
      headers: headers ?? this.headers,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'format': format?.index,
      'language': language,
      'headers': headers?.toMap(),
    };
  }

  @override
  String toString() {
    return jsonPrettyEncode(toJson());
  }

  @override
  List<Object?> get props => [url, format, language, headers];
}

/// An enumeration of the different subtitle formats.
enum SubtitleFormat {
  /// Represents the WebVTT (Web Video Text Tracks) subtitle format.
  vtt,

  /// Represents the SubRip Text (SRT) subtitle format.
  srt,

  /// Represents the Advanced SubStation Alpha (ASS) subtitle format.
  ass,
}
