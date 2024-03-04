/// `SeasonData` is a class that represents the data of a season.
///
/// It includes the following properties:
/// * `season`: A number representing the season number.
/// * `name`: A string representing the name of the season.
///
/// The `SeasonData` class has a constructor that takes these two properties.
///
/// It also overrides the `toString` method to provide a more readable string representation of the `SeasonData`.
class SeasonData {
  final num? season;
  final String? name;

  /// Creates a new `SeasonData` instance.
  ///
  /// [season] is the number representing the season number.
  /// [name] is the string representing the name of the season.
  SeasonData({this.season, this.name});

  @override
  String toString() {
    return 'SeasonData(season: $season, name: $name)';
  }
}
