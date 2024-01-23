// import 'package:meiyou_extensions_lib/models/media_details.dart';
// import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
// import 'package:meiyou_extensions_lib/src/models/homepage.dart';
// import 'package:meiyou_extensions_lib/src/models/interfaces/base_plugin_api.dart';
// import 'package:meiyou_extensions_lib/src/models/interfaces/extractor_api.dart';
// import 'package:meiyou_extensions_lib/src/models/media/media.dart';
// import 'package:meiyou_extensions_lib/src/models/search_response.dart';
// import 'package:ok_http_dart/ok_http_dart.dart';

// abstract class HttpSource extends BasePluginApi {
//   @override
//   Future<HomePage> loadHomePage(int page, HomePageRequest request) async {
//     final response = await client.request(homePageRequest(page, request));
//     return homePageParse(page, request, response);
//   }

//   OKHttpRequest homePageRequest(int page, HomePageRequest request);

//   final OkHttpClient client = OkHttpClient();

//   HomePage homePageParse(
//       int page, HomePageRequest request, OkHttpResponse response);

//   @override
//   Future<List<SearchResponse>> search(String query) async {
//     return client.request(searchRequest(query)).then(searchParse);
//   }

//   OKHttpRequest searchRequest(String query);

//   List<SearchResponse> searchParse(OkHttpResponse response);

//   @override
//   Future<MediaDetails> loadMediaDetails(SearchResponse searchResponse) {
//     return client
//         .request(mediaDetailsRequest(searchResponse))
//         .then(mediaDetailsParse);
//   }

//   OKHttpRequest mediaDetailsRequest(SearchResponse searchResponse);

//   MediaDetails mediaDetailsParse(OkHttpResponse response);

//   @override
//   Future<List<ExtractorLink>> loadLinks(String url) {
//     return client.request(linksRequest(url)).then(linksParse);
//   }

//   OKHttpRequest linksRequest(String url);

//   List<ExtractorLink> linksParse(OkHttpResponse response);

//   @override
//   Future<Media?> loadMedia(ExtractorLink link) {
//     return getExtractorApi(link).extract();
//   }

//   ExtractorApi getExtractorApi(ExtractorLink link);
// }
