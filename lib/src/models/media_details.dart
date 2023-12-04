import 'package:meiyou_extenstions/src/models/actor_data.dart';
import 'package:meiyou_extenstions/src/models/external_id.dart';
import 'package:meiyou_extenstions/src/models/media_item/media_item.dart';
import 'package:meiyou_extenstions/src/models/search_response.dart';
import 'package:meiyou_extenstions/src/models/show_status.dart';
import 'package:meiyou_extenstions/src/models/show_type.dart';

class MediaDetails {
  MediaDetails({
    required this.type,
    required this.name,
    required this.url,
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
    posterImage = searchResponse.poster;
    url = searchResponse.url;
    type = searchResponse.type;
  }
}
