import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/models/season_list.dart';

/// A class that represents a TV series.
///
/// The `TvSeries` class extends the `MediaItem` class and adds a list of `SeasonList` objects.
///
/// This class has the following properties:
/// * `data`: A list of `SeasonList` objects representing the seasons of the TV series.
class TvSeries extends MediaItem {
  TvSeries({required this.data}) : super(type: MediaItemType.TvSeries);

  /// A list of `SeasonList` objects representing the seasons of the TV series.
  final List<SeasonList> data;

  @override
  String toString() {
    return 'TvSeries(data: $data)';
  }
}
