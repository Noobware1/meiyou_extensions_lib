import 'package:meiyou_extenstions/src/models/media/video/video_format.dart';
import 'package:meiyou_extenstions/src/models/media/video/video_quailty.dart';

class VideoSource {
  VideoSource({
    this.url = '',
    this.format = VideoFormat.other,
    this.quality,
    this.title,
    this.isBackup = false,
  });

  String url;
  VideoFormat format;
  VideoQuality? quality;
  bool isBackup;
  String? title;
}
