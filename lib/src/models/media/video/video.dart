import 'package:meiyou_extenstions/src/models/media/media.dart';
import 'package:meiyou_extenstions/src/models/media/video/subtitle.dart';
import 'package:meiyou_extenstions/src/models/media/video/video_source.dart';
import 'package:meiyou_extenstions/src/utils/unwrap.dart';

class Video extends Media {
  Video(
      {this.videoSources = const [],
      this.subtitles,
      super.extra,
      super.headers})
      : super(mediaType: MediaType.Video);

  List<VideoSource> videoSources;
  List<Subtitle>? subtitles;

  @override
  String toString() {
    return 'Video(mediaType: $mediaType, videoSources: $videoSources, subtitles: $subtitles, extra: $extra, headers: $headers)';
  }
}
