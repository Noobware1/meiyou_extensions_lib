// ignore_for_file: non_constant_identifier_names

import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_content.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/preferences/preference_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/preference/shared_preferences.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_asset.dart';
import 'package:meiyou_extensions_lib/src/models/media_content.dart';
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
      'getMediaDetails': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.iMedia, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'media',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.iMedia, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getMediaContentList': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(CoreTypes.list, [
                    BridgeTypeRef(ExtensionLibTypes.iMediaContent, []),
                  ]),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'media',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.iMedia, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getMediaLinkList': BridgeMethodDef(
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
                  'content',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.iMediaContent, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'getMediaAsset': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.mediaAsset, []),
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
    return $bridgeGetSource(identifier);
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    return $bridgeSetSource(identifier, value);
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

  void $_set(String prop, $Value value);

  $Value? $bridgeGetSource(String identifier) {
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

  void $bridgeSetSource(String identifier, $Value value) {
    throw UnimplementedError('Unknown identifier $identifier');
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
  Future<IMedia> getMediaDetails(IMedia media) {
    return ($_invoke('getMediaDetails', [
      $IMedia.wrap(media),
    ]) as Future)
        .then((value) => value as IMedia);
  }

  @override
  Future<List<IMediaContent>> getMediaContentList(IMedia media) {
    return ($_invoke('getMediaContentList', [
      $IMedia.wrap(media),
    ]) as Future)
        .then((value) => (value as List).cast<IMediaContent>());
  }

  @override
  Future<List<MediaLink>> getMediaLinkList(IMediaContent content) {
    return ($_invoke('getMediaLinkList', [
      $IMediaContent.wrap(content),
    ]) as Future)
        .then((value) => (value as List).cast<MediaLink>());
  }

  @override
  Future<MediaAsset?> getMediaAsset(MediaLink link) {
    return ($_invoke('getMediaAsset', [
      $MediaLink.wrap(link),
    ]) as Future)
        .then((value) => value as MediaAsset);
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
      $_get('preferences') as SharedPreferences;
  $Value get _$preferences => $SharedPreferences.wrap(super.preferences);
}
