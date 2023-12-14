import 'package:meiyou_extenstions/src/models/extractor_link.dart';
import 'package:meiyou_extenstions/src/models/homepage.dart';
import 'package:meiyou_extenstions/src/models/media/media.dart';
import 'package:meiyou_extenstions/src/models/media_details.dart';
import 'package:meiyou_extenstions/src/models/search_response.dart';

abstract class BasePluginApi {
  BasePluginApi();

  String get baseUrl;

  Iterable<HomePageData> get homePage;

  Future<HomePage> loadHomePage(int page, HomePageRequest request);

  Future<List<SearchResponse>> search(String query);

  Future<MediaDetails> loadMediaDetails(SearchResponse searchResponse);

  Future<List<ExtractorLink>> loadLinks(String url);

  Future<Media?> loadMedia(ExtractorLink link);
}
