import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/shared_preferences.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/models/content_data_link.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/info_page.dart';
import 'package:meiyou_extensions_lib/src/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';

/// dart_eval bimodal wrapper for [Source]
class $Source extends Source with $Bridge<Source> {
  $Source();

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Source.', __$Source$new.call,
        isBridge: true);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.source);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'id': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'supportsHomePage': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'homePageRequestTimeout': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
              nullable: false),
          isStatic: false),
      'lang': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'homePageRequests': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(ExtensionLibTypes.homePageRequest, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'getHomePage': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.homePage, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'page',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'request',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.homePageRequest, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getInfoPage': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.infoPage, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getContentDataLinks': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.list, [
                    BridgeTypeRef(ExtensionLibTypes.contentDataLink, []),
                  ]),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getContentData': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.contentData, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'link',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.contentDataLink, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'setupPreferences': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(ExtensionLibTypes.preferenceData, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'preferences': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.sharedPreferences, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    setters: {},
    bridge: true,
    wrap: false,
  );

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'supportsHomePage':
        return _$supportsHomePage;
      case 'homePageRequestTimeout':
        return _$homePageRequestTimeout;
      case 'lang':
        return _$lang;
      case 'preferences':
        return _$preferences;
      case 'setupPreferences':
        return __$setupPreferences;
      default:
        throw UnimplementedError('Unknown identifier $identifier');
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) =>
      throw UnimplementedError();

  static const __$Source$new = $Function(_$Source$new);
  static $Value? _$Source$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Source();
  }

  @override
  int get id => $_get('id') as int;
  @override
  String get name => $_get('name') as String;
  @override
  bool get supportsHomePage => $_get('supportsHomePage') as bool;
  $Value get _$supportsHomePage => $bool(super.supportsHomePage);
  @override
  double get homePageRequestTimeout =>
      $_get('homePageRequestTimeout') as double;
  $Value get _$homePageRequestTimeout => $double(super.homePageRequestTimeout);
  @override
  String get lang => $_get('lang') as String;
  $Value get _$lang => $String(super.lang);

  @override
  List<HomePageRequest> homePageRequests() {
    return ($_invoke('homePageRequests', []) as List).cast<HomePageRequest>();
  }

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    return ($_invoke('getHomePage', [
      $int(page),
      $HomePageRequest.wrap(request),
    ]) as Future)
        .then((value) => value as HomePage);
  }

  @override
  Future<InfoPage> getInfoPage(String url) {
    return ($_invoke('getInfoPage', [
      $String(url),
    ]) as Future)
        .then((value) => value as InfoPage);
  }

  @override
  Future<List<ContentDataLink>> getContentDataLinks(String url) {
    return ($_invoke('getContentDataLinks', [
      $String(url),
    ]) as Future)
        .then((value) => (value as List).cast<ContentDataLink>());
  }

  @override
  Future<ContentData?> getContentData(ContentDataLink link) {
    return ($_invoke('getContentData', [
      $ContentDataLink.wrap(link),
    ]) as Future)
        .then((value) => value as ContentData?);
  }

  @override
  List<PreferenceData> setupPreferences() {
    return ($_invoke('setupPreferences', []) as List).cast<PreferenceData>();
  }

  $Value get __$setupPreferences => $Function(_$setupPreferences);
  $Value? _$setupPreferences(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $UnsupportedError.wrap(UnsupportedError('Not implemented'));
  }

  @override
  SharedPreferences get preferences =>
      $_get('preferences') as SharedPreferences;
  $Value get _$preferences => $SharedPreferences.wrap(super.preferences);
}
