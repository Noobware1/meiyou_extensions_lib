// ignore_for_file: non_constant_identifier_names

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/shared_preferences.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/home_page.dart';
import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_content.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/models/source/source.dart';
import 'package:meiyou_extensions_lib/src/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/preference/shared_preferences.dart';

/// dart_eval bimodal wrapper for [Source]
class $Source extends Source with $SourceMixin, $Bridge<Source> {
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
      'getMediaDetails': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.mediaDetails, []),
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
      'getMediaContent': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.future, [
                BridgeTypeRef(ExtensionLibTypes.mediaContent, []),
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
      ),
      'getMediaLinks': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.list, [
                    BridgeTypeRef(ExtensionLibTypes.mediaLink, []),
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
      'getMedia': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.media, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'link',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.mediaLink, []),
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
    return $bridgeGetFromSource(identifier);
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    switch (identifier) {
      default:
        return $_set(identifier, value);
    }
  }

  static const __$Source$new = $Function(_$Source$new);
  static $Value? _$Source$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Source();
  }
}

mixin $SourceMixin on Source {
  dynamic $_get(String prop);

  dynamic $_invoke(String method, List<$Value?> args);

  $Value? $bridgeGetFromSource(String identifier) {
    switch (identifier) {
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
  int get id => $_get('id') as int;

  @override
  String get name => $_get('name') as String;

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
  Future<MediaDetails> getMediaDetails(MediaDetails mediaDetails) {
    return ($_invoke('getMediaDetails', [
      $MediaDetails.wrap(mediaDetails),
    ]) as Future)
        .then((value) => value as MediaDetails);
  }

  @override
  Future<MediaContent> getMediaContent(MediaDetails mediaDetails) {
    return ($_invoke('getMediaContent', [
      $MediaDetails.wrap(mediaDetails),
    ]) as Future)
        .then((value) => value as MediaContent);
  }

  @override
  Future<List<MediaLink>> getMediaLinks(String url) {
    return ($_invoke('getMediaLinks', [
      $String(url),
    ]) as Future)
        .then((value) => (value as List).cast<MediaLink>());
  }

  @override
  Future<Media?> getMedia(MediaLink link) {
    return ($_invoke('getMedia', [
      $MediaLink.wrap(link),
    ]) as Future)
        .then((value) => value as Media?);
  }

  @override
  List<PreferenceData> setupPreferences() {
    return ($_invoke('setupPreferences', []) as List).cast<PreferenceData>();
  }

  $Value get __$setupPreferences => $Function(_$setupPreferences);

  $Value? _$setupPreferences(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = super.setupPreferences();
    return $List.wrap(List.generate($result.length, (index) {
      return $PreferenceData.wrap($result[index]);
    }));
  }

  @override
  SharedPreferences get preferences =>
      $_invoke('preferences', []) as SharedPreferences;

  $Value get _$preferences => $SharedPreferences.wrap(super.preferences);
}
