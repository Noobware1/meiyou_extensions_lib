import 'package:meiyou_extenstions/src/models/media_item/media_item.dart';
import 'package:meiyou_extenstions/src/models/season_list.dart';

class TvSeries extends MediaItem {
  TvSeries({required this.data}) : super(type: MediaItemType.TvSeries);

  final List<SeasonList> data;
}
