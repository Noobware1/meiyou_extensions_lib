class SeasonData {
  const SeasonData({this.season, this.name});

  final num? season;
  final String? name;

  @override
  String toString() {
    return 'SeasonData(season: $season, name: $name)';
  }
}
