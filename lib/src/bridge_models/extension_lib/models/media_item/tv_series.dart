import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/tv_series.dart';

import 'package:meiyou_extensions_lib/src/models/season_list.dart';

/// dart_eval bimodal wrapper for [TvSeries]
class $TvSeries implements TvSeries, $Instance {
  /// Configure the [$TvSeries] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        ExtensionLibTypes.tvSeries.library, 'TvSeries.', __$TvSeries$new.call);
  }

  late final $Instance _superclass = $MediaItem.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.tvSeries);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.mediaItem, []),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'data',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.seasonList, []),
                    ]),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'data': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.seasonList, []),
              ]),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [TvSeries] in an [$TvSeries]
  $TvSeries.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'data':
        return $List.wrap(data);

      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  TvSeries get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final TvSeries $value;

  @override
  List<SeasonList> get data => $value.data;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as TvSeries;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$TvSeries$new = $Function(_$TvSeries$new);
  static $Value? _$TvSeries$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = (args[0]?.$value as List).cast<SeasonList>();
    return $TvSeries.wrap(TvSeries(data: data));
  }

  @override
  bool get isAnime => $value.isAnime;

  @override
  bool get isManga => $value.isManga;

  @override
  bool get isMovie => $value.isMovie;

  @override
  bool get isNovel => $value.isNovel;

  @override
  bool get isTvSeries => $value.isTvSeries;

  @override
  MediaItemType get type => $value.type;
}
