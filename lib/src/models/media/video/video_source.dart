import 'package:meiyou_extensions_lib/src/models/media/video/video_format.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/video_quality.dart';

/// A class that represents a source of a video.
///
/// The `VideoSource` class has the following properties:
/// * `url`: A string representing the URL of the video source.
/// * `format`: A `VideoFormat` value representing the format of the video source.
/// * `quality`: An optional `VideoQuality` object representing the quality of the video source.
/// * `isBackup`: A boolean indicating whether the video source is a backup.
/// * `title`: An optional string representing the title of the video source.
class VideoSource {
  VideoSource({
    this.url = '',
    this.format = VideoFormat.other,
    this.quality,
    this.title,
    this.isBackup = false,
  });

  /// A string representing the URL of the video source.
  String url;

  /// A `VideoFormat` value representing the format of the video source.
  VideoFormat format;

  /// An optional `VideoQuality` object representing the quality of the video source.
  VideoQuality? quality;

  /// A boolean indicating whether the video source is a backup.
  bool isBackup;

  /// An optional string representing the title of the video source.
  String? title;

  @override
  String toString() {
    return 'VideoSource(url: $url, format: $format, quality: $quality, isBackup: $isBackup, title: $title)';
  }
}
