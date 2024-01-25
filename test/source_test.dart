import 'package:dart_eval/dart_eval.dart';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/extensions_lib.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/catalogue_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/online/http_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/online/parsed_http_source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/interfaces/source.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/network/network_helper.dart';
import 'package:meiyou_extensions_lib/src/network/network_preferences.dart';
import 'package:meiyou_extensions_lib/src/preference/perference.dart';
import 'package:meiyou_extensions_lib/src/preference/perference_store.dart';
import 'package:test/test.dart';

import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/network.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';
import 'package:okhttp/okhttp.dart';

void main() {
  group('\$Source Test', () {
    late Compiler compiler;
    setUp(() {
      compiler = ExtensionComplier();
    });
    test('Source', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:meiyou_extensions_lib/models.dart';


class MockSource extends Source {
  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) async {
    return HomePage(data: HomePageList(name: '', data: []), page: page);
  }

  @override
  Future<List<ExtractorLink>> getLinks(String url) async {
    return [];
  }

  @override
  Future<Media?> getMedia(ExtractorLink link) async {
    return null;
  }

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) async {
    return MediaDetails();
  }

  @override
  Iterable<HomePageData> get homePageList => HomePageData.fromMap({
        'idk': '__idk__',
      });

  @override
  final int id = 1;
  
  @override
  final String name = 'MockSource'; 
}

Source main() {
 return MockSource();
}
          ''',
        },
      });

      var runtime = ExtensionLoader.fromProgram(compiled).runtime;
      var value =
          runtime.executeLib('package:example/main.dart', 'main') as Source;
      expect(value, isA<$Source>());
      expect(value.homePageList.first.name, 'idk');
      expect(value.id, 1);
      expect(value.name, 'MockSource');
      expect(value.supportsHomePage, true);
    });

    test('MockCatalogueSource', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:meiyou_extensions_lib/models.dart';

class MockSource extends CatalogueSource {
  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) async {
    return HomePage(data: HomePageList(name: '', data: []), page: page);
  }

  @override
  Future<List<ExtractorLink>> getLinks(String url) async {
    return [];
  }

  @override
  Future<Media?> getMedia(ExtractorLink link) async {
    return null;
  }

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) async {
    return MediaDetails();
  }

  @override
  Iterable<HomePageData> get homePageList => HomePageData.fromMap({
        'idk': '__idk__',
      });

  @override
  final int id = 1;

  @override
  final String name = 'MockSource';

  @override
  FilterList getFilterList() {
    return FilterList([HeaderFilter('idk')]);
  }

  @override
  Future<List<SearchResponse>> getSearch(
      int page, String query, FilterList filters) async {
    return [];
  }
}

Source main() {
 return MockSource();
}
          ''',
        },
      });

      var runtime = ExtensionLoader.fromProgram(compiled).runtime;
      var value = runtime.executeLib('package:example/main.dart', 'main')
          as CatalogueSource;
      expect(value, isA<$CatalogueSource>());
      expect(value.homePageList.first.name, 'idk');
      expect(value.id, 1);
      expect(value.name, 'MockSource');
      expect(value.supportsHomePage, true);
      expect(value.getFilterList().first, isA<HeaderFilter>());
    });

    test('MockHttpSource', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/network.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';
import 'package:okhttp/okhttp.dart';


class MockHttpSource extends HttpSource {
  MockHttpSource(NetworkHelper network) : super(network);

  @override
  final String baseUrl = 'https://example.com';

  @override
  HomePage homePageParse(int page, HomePageRequest request, Response response) {
    return HomePage(data: HomePageList(name: '', data: []), page: page);
  }

  @override
  Request homePageRequest(int page, HomePageRequest request) {
    return GET(request.data);
  }

  @override
  List<ExtractorLink> linksParse(Response response) {
    return [];
  }

  @override
  Request linksRequest(String url) {
    return GET(url);
  }

  @override
  MediaDetails mediaDetailsParse(Response response) {
    return MediaDetails();
  }

  @override
  Request mediaDetailsRequest(SearchResponse searchResponse) {
    return GET(searchResponse.url);
  }

  @override
  Media? mediaParse(Response response) {
    return null;
  }

  @override
  Request? mediaRequest(ExtractorLink link) {
    return null;
  }

  @override
  String get name => 'MockHttpSource';

  @override
  List<SearchResponse> searchParse(Response response) {
    return [];
  }

  @override
  Request searchRequest(int page, String query, FilterList filters) {
    return GET(this.baseUrl);
  }

  @override
  FilterList getFilterList() {
    return FilterList([HeaderFilter('idk')]);
  }

  @override
  Iterable<HomePageData> get homePageList => HomePageData.fromMap({
        'idk': '__idk__',
      });
}
MockHttpSource main(NetworkHelper network) {
 return MockHttpSource(network);
}
          ''',
        },
      });

      var runtime = ExtensionLoader.fromProgram(compiled).runtime;
      var value = runtime.executeLib(
        'package:example/main.dart',
        'main',
        [
          $NetworkHelper.wrap(
              NetworkHelper(NetworkPreferences(MockPrefrenceStore(), false)))
        ],
      ) as HttpSource;
      expect(value, isA<$HttpSource>());
      expect(value.homePageList.first.name, 'idk');
      expect(value.id, 3702996020078586599);
      expect(value.name, 'MockHttpSource');
      expect(value.supportsHomePage, true);
      expect(value.getFilterList().first, isA<HeaderFilter>());
      expect(value.headers.names, {'User-Agent'});
      expect(value.baseUrl, 'https://example.com');
      expect(value.headersBuilder().build().length, 1);
      expect(value.client, isA<OkHttpClient>());
    });

    test('MockHttpSource', () {
      var compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/network.dart';
import 'package:okhttp/request.dart';
import 'package:okhttp/response.dart';
import 'package:okhttp/okhttp.dart';
import 'package:html/dom.dart';


class MockParsedHttpSource extends ParsedHttpSource {
  MockParsedHttpSource(NetworkHelper network) : super(network);

  @override
  final String baseUrl = 'https://example.com';

  @override
  Request homePageRequest(int page, HomePageRequest request) {
    return GET(request.data);
  }

  @override
  Request linksRequest(String url) {
    return GET(url);
  }

  @override
  Request mediaDetailsRequest(SearchResponse searchResponse) {
    return GET(searchResponse.url);
  }

  @override
  Request? mediaRequest(ExtractorLink link) {
    return null;
  }

  @override
  String get name => 'MockParsedHttpSource';

  @override
  Request searchRequest(int page, String query, FilterList filters) {
    return GET(this.baseUrl);
  }

  @override
  FilterList getFilterList() {
    return FilterList([HeaderFilter('idk')]);
  }

  @override
  Iterable<HomePageData> get homePageList => HomePageData.fromMap({
        'idk': '__idk__',
      });

  @override
  String? homePageHasNextPageSelector(int page, HomePageRequest request) {
    return null;
  }

  @override
  SearchResponse homePageListDataFromElement(
      int page, HomePageRequest request, Element element) {
    return SearchResponse(title: '', url: '', poster: '', type: ShowType.Anime);
  }

  @override
  String homePageListDataSelector(int page, HomePageRequest request) {
    return '';
  }

  @override
  ExtractorLink linkFromElement(Element element) {
    return ExtractorLink(name: '', url: '');
  }

  @override
  String linksListSelector() {
    return '';
  }

  @override
  MediaDetails mediaDetailsFromDocument(Document document) {
    return MediaDetails();
  }

  @override
  Media? mediaFromDocument(Document document) {
    return null;
  }

  @override
  MediaItem? mediaItemFromElement(Element element) {
    return null;
  }

  @override
  String searchListSelector() {
    return '';
  }

  @override
  SearchResponse searchResponseFromElement(Element element) {
    return SearchResponse(title: '', url: '', poster: '', type: ShowType.Anime);
  }
}

MockParsedHttpSource main(NetworkHelper network) {
 return MockParsedHttpSource(network);
}
          ''',
        },
      });

      var runtime = ExtensionLoader.fromProgram(compiled).runtime;
      var value = runtime.executeLib(
        'package:example/main.dart',
        'main',
        [
          $NetworkHelper.wrap(
              NetworkHelper(NetworkPreferences(MockPrefrenceStore(), false)))
        ],
      ) as ParsedHttpSource;
      expect(value, isA<$ParsedHttpSource>());
      expect(value.homePageList.first.name, 'idk');
      expect(value.id, 543984441962833101);
      expect(value.name, 'MockParsedHttpSource');
      expect(value.supportsHomePage, true);
      expect(value.getFilterList().first, isA<HeaderFilter>());
      expect(value.headers.names, {'User-Agent'});
      expect(value.baseUrl, 'https://example.com');
      expect(value.headersBuilder().build().length, 1);
      expect(value.client, isA<OkHttpClient>());
    });
  });
}

class MockPreference<T> extends Preference<T> {
  MockPreference(T value) : _value = value;

  T _value;
  @override
  T defaultValue() {
    return _value;
  }

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  T get() {
    return _value;
  }

  @override
  bool isSet() {
    return false;
  }

  @override
  String key() {
    return 'mock';
  }

  @override
  void set(T value) {
    _value = value;
  }
}

class MockPrefrenceStore implements PreferenceStore {
  @override
  Preference<bool> getBool(String key, [bool defaultValue = false]) {
    return MockPreference(defaultValue);
  }

  @override
  Preference<double> getDouble(String key, [double defaultValue = 0.0]) {
    // TODO: implement getDouble
    throw UnimplementedError();
  }

  @override
  Preference<int> getInt(String key, [int defaultValue = 0]) {
    return MockPreference(defaultValue);
  }

  @override
  Preference<T> getObject<T>(String key, T defaultValue,
      String Function(T p1) serializer, T Function(String p1) deserializer) {
    // TODO: implement getObject
    throw UnimplementedError();
  }

  @override
  Preference<String> getString(String key, [String defaultValue = ""]) {
    return MockPreference(defaultValue);
  }

  @override
  Preference<Set<String>> getStringSet(String key,
      [Set<String> defaultValue = const {}]) {
    // TODO: implement getStringSet
    throw UnimplementedError();
  }
}
