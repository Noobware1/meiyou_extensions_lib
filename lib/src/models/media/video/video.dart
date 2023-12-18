import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/subtitle.dart';
import 'package:meiyou_extensions_lib/src/models/media/video/video_source.dart';

/// A class that represents a video.
///
/// The `Video` class extends the `Media` class and adds a list of `VideoSource` objects and a list of `Subtitle` objects.
///
/// This class has the following properties:
/// * `videoSources`: A list of `VideoSource` objects representing the sources of the video.
/// * `subtitles`: An optional list of `Subtitle` objects representing the subtitles of the video.
class Video extends Media {
  Video({
    this.videoSources = const [],
    this.subtitles,
    super.extra,
    super.headers,
  }) : super(mediaType: MediaType.Video);

  /// A list of `VideoSource` objects representing the sources of the video.
  List<VideoSource> videoSources;

  /// An optional list of `Subtitle` objects representing the subtitles of the video.
  List<Subtitle>? subtitles;

  @override
  String toString() {
    return 'Video(mediaType: $mediaType, videoSources: $videoSources, subtitles: $subtitles, extra: $extra, headers: $headers)';
  }
}
