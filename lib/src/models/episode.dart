/// `Episode` is a class that represents an episode of a show.
///
/// It includes the following properties:
/// * `data`: A string representing the data of the episode.
/// * `name`: An optional string representing the name of the episode.
/// * `season`: An optional integer representing the season number of the episode.
/// * `episode`: An optional number representing the episode number.
/// * `posterImage`: An optional string representing the URL of the poster image for the episode.
/// * `description`: An optional string representing the description of the episode.
/// * `isFiller`: An optional boolean indicating whether the episode is a filler.
/// * `date`: An optional `DateTime` object representing the date of the episode.
///
/// The `Episode` class has a constructor that takes these properties.
///
/// It also includes a method for getting a string representation of the `Episode` object (`toString`).
class Episode {
  Episode({
    this.data = '',
    this.name,
    this.season,
    this.episode,
    this.posterImage,
    this.description,
    this.isFiller,
    this.date,
  });

  String data;
  String? name;
  int? season;
  num? episode;
  String? posterImage;
  bool? isFiller;
  String? description;
  DateTime? date;

  @override
  String toString() {
    return 'Episode(data: $data, name: $name, season: $season, episode: $episode, posterImage: $posterImage, description: $description, isFiller: $isFiller, date: $date)';
  }
}
