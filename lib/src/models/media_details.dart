import 'package:meiyou_extenstions/src/models/actor_data.dart';
import 'package:meiyou_extenstions/src/models/external_id.dart';
import 'package:meiyou_extenstions/src/models/media_item/media_item.dart';
import 'package:meiyou_extenstions/src/models/search_response.dart';
import 'package:meiyou_extenstions/src/models/show_status.dart';
import 'package:meiyou_extenstions/src/models/show_type.dart';

/// `MediaDetails` is a class that represents the details of a media item.
///
/// It includes the following properties:
/// * `type`: A `ShowType` object representing the type of the show. Defaults to `ShowType.Others`.
/// * `name`: A string representing the name of the show. Defaults to an empty string.
/// * `url`: A string representing the URL of the show. Defaults to an empty string.
/// * `otherTitles`: An optional list of strings representing other titles of the show.
/// * `status`: An optional `ShowStatus` object representing the status of the show.
/// * `bannerImage`: An optional string representing the URL of the banner image for the show.
/// * `posterImage`: An optional string representing the URL of the poster image for the show.
/// * `rating`: An optional double representing the rating of the show.
/// * `description`: An optional string representing the description of the show.
/// * `startDate`: An optional `DateTime` object representing the start date of the show.
/// * `endDate`: An optional `DateTime` object representing the end date of the show.
/// * `duration`: An optional integer representing the duration of the show in minutes.
/// * `genres`: An optional list of strings representing the genres of the show.
/// * `recommendations`: An optional list of `SearchResponse` objects representing recommended shows.
/// * `externalIds`: An optional `ExternalId` object representing the external IDs of the show.
/// * `actorData`: An optional list of `ActorData` objects representing the actors in the show.
/// * `mediaItem`: An optional `MediaItem` object representing the media item of the show.
///
class MediaDetails {
  MediaDetails({
    this.type = ShowType.Others,
    this.name = '',
    this.url = '',
    this.otherTitles,
    this.status,
    this.bannerImage,
    this.posterImage,
    this.rating,
    this.description,
    this.startDate,
    this.endDate,
    this.duration,
    this.genres,
    this.recommendations,
    this.externalIds,
    this.actorData,
    this.mediaItem,
  });

  ShowType type;
  String name;
  String url;
  List<String>? otherTitles;
  ShowStatus? status;
  String? bannerImage;
  String? posterImage;
  double? rating;
  String? description;
  DateTime? startDate;
  DateTime? endDate;
  Duration? duration;
  List<String>? genres;
  List<SearchResponse>? recommendations;
  List<ExternalId>? externalIds;
  List<ActorData>? actorData;
  MediaItem? mediaItem;

  void copyFromSearchResponse(SearchResponse searchResponse) {
    name = searchResponse.title;
    url = searchResponse.url;
    posterImage = searchResponse.poster;
    type = searchResponse.type;
    description = searchResponse.description;
    genres = searchResponse.generes;
    rating = searchResponse.rating;
  }

  @override
  String toString() {
    return 'MediaDetails(type: $type, name: $name, url: $url, otherTitles: $otherTitles, status: $status, bannerImage: $bannerImage, posterImage: $posterImage, rating: $rating, description: $description, startDate: $startDate, endDate: $endDate, duration: $duration, genres: $genres, recommendations: $recommendations, externalIds: $externalIds, actorData: $actorData, mediaItem: $mediaItem)';
  }
}
