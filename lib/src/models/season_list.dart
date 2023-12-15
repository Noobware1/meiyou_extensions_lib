import 'package:meiyou_extenstions/src/models/episode.dart';
import 'package:meiyou_extenstions/src/models/season_data.dart';

/// `SeasonList` is a class that represents a list of episodes in a season.
/// 
/// It includes the following properties:
/// * `season`: A `SeasonData` object representing the season data.
/// * `episodes`: A list of `Episode` objects representing the episodes in the season.
/// 
/// The `SeasonList` class has a constructor that requires these two properties.
/// 
/// It also overrides the `toString` method to provide a more readable string representation of the `SeasonList`.
class SeasonList {
  final SeasonData season;
  final List<Episode> episodes;

  /// Creates a new `SeasonList` instance.
  /// 
  /// [season] is the `SeasonData` object representing the season data.
  /// [episodes] is the list of `Episode` objects representing the episodes in the season.
  SeasonList({required this.season, required this.episodes});

  @override
  String toString() {
    return 'SeasonList(season: $season, episodes: $episodes)';
  }
}