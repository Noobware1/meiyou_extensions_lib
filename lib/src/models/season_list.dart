import 'package:meiyou_extenstions/src/models/episode.dart';
import 'package:meiyou_extenstions/src/models/season_data.dart';

class SeasonList {
  final SeasonData season;
  final List<Episode> episodes;

  SeasonList({required this.season, required this.episodes});

  @override
  String toString() {
    return 'SeasonList(season: $season, episodes: $episodes)';
  }
}
