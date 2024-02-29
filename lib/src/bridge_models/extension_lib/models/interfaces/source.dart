import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/lib_override.dart';
import 'package:meiyou_extensions_lib/preference.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/homepage.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';
import 'package:meiyou_extensions_lib/src/models/homepage.dart';

import 'package:meiyou_extensions_lib/src/models/interfaces/source.dart';
import 'package:meiyou_extensions_lib/src/models/media/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';

class $Source extends Source with $Bridge<Source> {
  $Source(ExtensionLibOverrides overrides) {
    _$preferences = $SharedPreferences
        .wrap(overrides.$SharedPreferences$new(getPreferenceKey()));
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.source);

  static void configureForRuntime(Runtime runtime, ExtensionLibOverrides overrides) {
    runtime.registerBridgeFunc($type.spec!.library, 'Source.',
        (runtime, target, args) => $new.call(runtime, target, args, overrides),
        isBridge: true);
  }

  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
        ),
      )
    },
    fields: {
      'id': BridgeFieldDef(BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int))),
      'name': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
      ),
      'lang': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
      ),
      'supportsHomePage': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
      ),
      'preferences': BridgeFieldDef(
        BridgeTypeAnnotation(
            BridgeTypeRef(ExtensionLibTypes.sharedPreferences)),
      ),
    },
    getters: {
      'homePageList': BridgeMethodDef(
        BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.iterable,
                [BridgeTypeRef(ExtensionLibTypes.homePageData)])),
            params: []),
      ),
    },
    methods: {
      'getHomePage': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeRef(ExtensionLibTypes.homePage),
            ]),
          ),
          params: [
            BridgeParameter('page',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)), false),
            BridgeParameter(
                'request',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.homePageRequest)),
                false),
          ],
        ),
      ),
      'getLinks': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.extractorLink),
              ]),
            ]),
          ),
          params: [
            BridgeParameter('url',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
          ],
        ),
      ),
      'getMedia': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeRef(ExtensionLibTypes.media),
              BridgeTypeRef(CoreTypes.nullType),
            ]),
          ),
          params: [
            BridgeParameter(
                'link',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.extractorLink)),
                false),
          ],
        ),
      ),
      'getMediaDetails': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.future, [
              BridgeTypeRef(ExtensionLibTypes.mediaDetails),
            ]),
          ),
          params: [
            BridgeParameter(
                'searchResponse',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.searchResponse)),
                false),
          ],
        ),
      ),
      'getPreferenceKey': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
          params: [],
        ),
      ),
      'setupPreferences': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list, [
              BridgeTypeRef(ExtensionLibTypes.preferenceData),
            ]),
          ),
          params: [],
        ),
      ),
    },
    bridge: true,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args,
      ExtensionLibOverrides overrides) {
    return $Source(overrides);
  }

  @override
  $Value? $bridgeGet(String identifier) {
    switch (identifier) {
      case 'lang':
        return $String(super.lang);
      case 'supportsHomePage':
        return $bool(super.supportsHomePage);
      case 'preferences':
        return _$preferences;
      case 'getPreferenceKey':
        return _$getPreferenceKey;
      case 'setupPreferences':
        return _$setupPreferences;
      default:
        throw UnimplementedError('Cannot get "$identifier" from "$this"');
    }
  }

  @override
  void $bridgeSet(String identifier, $Value value) {
    // TODO: implement $bridgeSet
  }

  @override
  Future<HomePage> getHomePage(int page, HomePageRequest request) {
    return ($_invoke(
                'getHomePage', [$int(page), $HomePageRequest.wrap(request)])
            as Future)
        .then((value) => value as HomePage);
  }

  @override
  Future<List<ExtractorLink>> getLinks(String url) {
    return ($_invoke('getLinks', [$String(url)]) as Future).then(
      (value) => value is $Value
          ? (value.$value as List).cast<ExtractorLink>()
          : value as List<ExtractorLink>,
    );
  }

  @override
  Future<Media?> getMedia(ExtractorLink link) {
    return ($_invoke('getMedia', [$ExtractorLink.wrap(link)]) as Future).then(
      (value) => value as Media?,
    );
  }

  @override
  Future<MediaDetails> getMediaDetails(SearchResponse searchResponse) {
    return ($_invoke('getMediaDetails', [$SearchResponse.wrap(searchResponse)])
            as Future)
        .then(
      (value) => value as MediaDetails,
    );
  }

  @override
  SharedPreferences get preferences => $_get('preferences');

  late final $Value? _$preferences;

  @override
  String getPreferenceKey() => $_invoke('getPreferenceKey', []);

  $Value? get _$getPreferenceKey => $Function(__$getPreferenceKey);

  $Value? __$getPreferenceKey(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(super.getPreferenceKey());
  }

  @override
  List<PreferenceData> setupPreferences() =>
      ($_invoke('setupPreferences', []) as List).cast<PreferenceData>();

  $Value? get _$setupPreferences => $Function(__$setupPreferences);

  $Value? __$setupPreferences(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $UnsupportedError.wrap(UnsupportedError('Not Used'));
  }

  @override
  Iterable<HomePageData> get homePageList => $_get('homePageList');

  @override
  int get id => $_get('id');

  @override
  String get name => $_get('name');

  @override
  bool get supportsHomePage => $_get('supportsHomePage');

  @override
  String get lang => $_get('lang');
}
