import 'package:meiyou_extenstions/models.dart';

class RapidCloud extends ExtractorApi {
  RapidCloud(super.extractorLink);

  @override
  Future<Media> extract() async {
    return Video(videoSources: []);
  }

  @override
  String get name => 'RapidCloud';
}
