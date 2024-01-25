import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dartx/dartx.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/actor_data.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/external_id.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/show_status.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/show_type.dart';
import 'package:meiyou_extensions_lib/src/models/actor_data.dart';
import 'package:meiyou_extensions_lib/src/models/external_id.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_item/media_item.dart';
import 'package:meiyou_extensions_lib/src/models/search_response.dart';
import 'package:meiyou_extensions_lib/src/models/show_status.dart';
import 'package:meiyou_extensions_lib/src/models/show_type.dart';

class $MediaDetails implements MediaDetails, $Instance {
  $MediaDetails.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        ExtensionLibTypes.mediaDetails.library, 'MediaDetails.', $new);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.mediaDetails);

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
            params: [],
            namedParams: [
              BridgeParameter(
                  'type', BridgeTypeAnnotation($ShowType.$type), true),
              BridgeParameter('name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), true),
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.string),
                  ),
                  true),
              BridgeParameter(
                  'otherTitles',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(
                          CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
                      nullable: true),
                  true),
              BridgeParameter('status',
                  BridgeTypeAnnotation($ShowStaus.$type, nullable: true), true),
              BridgeParameter(
                  'bannerImage',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                      nullable: true),
                  true),
              BridgeParameter(
                  'posterImage',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                      nullable: true),
                  true),
              BridgeParameter(
                  'rating',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double),
                      nullable: true),
                  true),
              BridgeParameter(
                  'description',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                      nullable: true),
                  true),
              BridgeParameter(
                  'startDate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime),
                      nullable: true),
                  true),
              BridgeParameter(
                  'endDate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime),
                      nullable: true),
                  true),
              BridgeParameter(
                  'duration',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration),
                      nullable: true),
                  true),
              BridgeParameter(
                  'genres',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(
                          CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'recommendations',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [$SearchResponse.$type]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'externalIds',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list),
                      nullable: true),
                  true),
              BridgeParameter(
                  'actorData',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [$ActorData.$type]),
                      nullable: true),
                  true),
              BridgeParameter('mediaItem',
                  BridgeTypeAnnotation($MediaItem.$type, nullable: true), true),
            ],
          ),
        ),
      },
      fields: {
        'type': BridgeFieldDef(
          BridgeTypeAnnotation($ShowType.$type),
        ),
        'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
        ),
        'url': BridgeFieldDef(
          BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string),
          ),
        ),
        'otherTitles': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
              nullable: true),
        ),
        'status': BridgeFieldDef(
            BridgeTypeAnnotation($ShowStaus.$type, nullable: true)),
        'bannerImage': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string), nullable: true),
        ),
        'posterImage': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string), nullable: true),
        ),
        'rating': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double), nullable: true),
        ),
        'description': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string), nullable: true),
        ),
        'startDate': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime),
              nullable: true),
        ),
        'endDate': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime),
              nullable: true),
        ),
        'duration': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration),
              nullable: true),
        ),
        'genres': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [BridgeTypeRef(CoreTypes.string)]),
              nullable: true),
        ),
        'recommendations': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [$SearchResponse.$type]),
              nullable: true),
        ),
        'externalIds': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list), nullable: true),
        ),
        'actorData': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [$ActorData.$type]),
              nullable: true),
        ),
        'mediaItem': BridgeFieldDef(
          BridgeTypeAnnotation($MediaItem.$type, nullable: true),
        ),
      },
      methods: {
        'copyFromSearchResponse': BridgeMethodDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
            params: [
              BridgeParameter('searchResponse',
                  BridgeTypeAnnotation($SearchResponse.$type), false),
            ]))
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'type':
        return $ShowType.wrap($value.type);

      case 'name':
        return $String($value.name);

      case 'url':
        return $String($value.url);

      case 'otherTitles':
        return $value.otherTitles != null
            ? $List.wrap($value.otherTitles!.mapList((it) => $String(it)))
            : const $null();

      case 'status':
        return $value.status != null
            ? $ShowStaus.wrap($value.status!)
            : const $null();

      case 'bannerImage':
        return $value.bannerImage != null
            ? $String($value.bannerImage!)
            : const $null();

      case 'posterImage':
        return $value.posterImage != null
            ? $String($value.posterImage!)
            : const $null();

      case 'rating':
        return $value.rating != null ? $double($value.rating!) : const $null();

      case 'description':
        return $value.description != null
            ? $String($value.description!)
            : const $null();

      case 'startDate':
        return $value.startDate != null
            ? $DateTime.wrap($value.startDate!)
            : const $null();

      case 'endDate':
        return $value.endDate != null
            ? $DateTime.wrap($value.endDate!)
            : const $null();

      case 'duration':
        return $value.duration != null
            ? $Duration.wrap($value.duration!)
            : const $null();

      case 'genres':
        return $value.genres != null
            ? $List.wrap($value.genres!.mapList((it) => $String(it)))
            : const $null();

      case 'recommendations':
        return $value.otherTitles != null
            ? $List.wrap($value.recommendations!
                .mapList((it) => $SearchResponse.wrap(it)))
            : const $null();

      case 'externalIds':
        return $value.externalIds != null
            ? $List
                .wrap($value.externalIds!.mapList((e) => $ExternalId.wrap(e)))
            : const $null();

      case 'actorData':
        return $value.actorData != null
            ? $List.wrap($value.actorData!.mapList((it) => $ActorData.wrap(it)))
            : const $null();

      case 'mediaItem':
        return $value.mediaItem != null
            ? $MediaItem.wrap($value.mediaItem!)
            : const $null();
      case 'copyFromSearchResponse':
        return const $Function($copyFromSearchResponse);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  static $Value? $copyFromSearchResponse(
      Runtime runtime, $Value? target, List<$Value?> args) {
    (target?.$value as MediaDetails)
        .copyFromSearchResponse(args[0]?.$value as SearchResponse);
    return null;
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $MediaDetails.wrap(MediaDetails(
      type: args[0]?.$value ?? ShowType.Others,
      name: args[1]?.$value ?? '',
      url: args[2]?.$value ?? '',
      otherTitles:
          (args[3]?.$value as List?)?.mapList((it) => (it as $String).$value),
      status: args[4]?.$value,
      bannerImage: args[5]?.$value,
      posterImage: args[6]?.$value,
      rating: args[7]?.$value,
      description: args[8]?.$value,
      startDate: args[9]?.$value,
      endDate: args[10]?.$value,
      duration: args[11]?.$value,
      genres:
          (args[12]?.$value as List?)?.mapList((it) => (it as $String).$value),
      recommendations:
          (args[13]?.$value as List?)?.mapList((it) => it as $SearchResponse),
      externalIds:
          (args[14]?.$value as List?)?.mapList((e) => e as $ExternalId),
      actorData: (args[15]?.$value as List?)?.mapList((it) => it as $ActorData),
      mediaItem: args[16]?.$value,
    ));
  }

  @override
  MediaDetails get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'type':
        $value.type = value.$reified;
        break;
      case 'name':
        $value.name = value.$reified is String ? value.$reified : null;
        break;
      case 'url':
        $value.url = value.$reified is String ? value.$reified : null;
        break;
      case 'otherTitles':
        $value.otherTitles =
            (value.$reified as List?)?.mapList((it) => it.toString());
        break;
      case 'status':
        $value.status = value.$reified;
        break;
      case 'bannerImage':
        $value.bannerImage = value.$reified is String ? value.$reified : null;
        break;
      case 'posterImage':
        $value.posterImage = value.$reified is String ? value.$reified : null;
        break;
      case 'rating':
        $value.rating = value.$reified is double ? value.$reified : null;
        break;
      case 'description':
        $value.description = value.$reified is String ? value.$reified : null;
        break;
      case 'startDate':
        $value.startDate = value.$reified is DateTime ? value.$reified : null;
        break;
      case 'endDate':
        $value.endDate = value.$reified is DateTime ? value.$reified : null;
        break;
      case 'duration':
        $value.duration = value.$reified is Duration ? value.$reified : null;
        break;
      case 'genres':
        $value.genres =
            (value.$reified as List?)?.mapList((it) => it.toString());
        break;
      case 'recommendations':
        $value.recommendations = (value.$reified as List?)?.mapList(
            (it) => (it is $Value ? it.$value : it) as SearchResponse);
        break;
      case 'externalIds':
        $value.externalIds = (value.$reified as List?)
            ?.mapList((it) => (it is $Value ? it.$value : it) as ExternalId);
        break;
      case 'actorData':
        $value.actorData = (value.$reified as List?)
            ?.mapList((it) => (it is $Value ? it.$value : it) as ActorData);
        break;
      case 'mediaItem':
        $value.mediaItem = value.$reified as MediaItem?;

        break;
      default:
        return _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final MediaDetails $value;

  @override
  String? get bannerImage => $value.bannerImage;

  @override
  String? get description => $value.description;

  @override
  Duration? get duration => $value.duration;

  @override
  DateTime? get endDate => $value.endDate;

  @override
  List<ExternalId>? get externalIds => $value.externalIds;

  @override
  List<String>? get genres => $value.genres;

  @override
  String get name => $value.name;

  @override
  List<String>? get otherTitles => $value.otherTitles;

  @override
  String? get posterImage => $value.posterImage;

  @override
  double? get rating => $value.rating;

  @override
  List<SearchResponse>? get recommendations => $value.recommendations;

  @override
  DateTime? get startDate => $value.startDate;

  @override
  ShowStatus? get status => $value.status;

  @override
  ShowType get type => $value.type;

  @override
  String get url => $value.url;

  @override
  List<ActorData>? get actorData => $value.actorData;

  @override
  MediaItem? get mediaItem => $value.mediaItem;

  @override
  set bannerImage(String? bannerImage) {
    // TODO: implement bannerImage
  }

  @override
  set description(String? description) {
    // TODO: implement description
  }

  @override
  set duration(Duration? duration) {
    // TODO: implement duration
  }

  @override
  set endDate(DateTime? endDate) {
    // TODO: implement endDate
  }

  @override
  set externalIds(List<ExternalId>? externalIds) {
    // TODO: implement externalIds
  }

  @override
  set genres(List<String>? genres) {
    // TODO: implement genres
  }

  @override
  set mediaItem(MediaItem? mediaItem) {
    // TODO: implement mediaItem
  }

  @override
  set name(String name) {
    // TODO: implement name
  }

  @override
  set otherTitles(List<String>? otherTitles) {
    // TODO: implement otherTitles
  }

  @override
  set posterImage(String? posterImage) {
    // TODO: implement posterImage
  }

  @override
  set rating(double? rating) {
    // TODO: implement rating
  }

  @override
  set recommendations(List<SearchResponse>? recommendations) {
    // TODO: implement recommendations
  }

  @override
  set startDate(DateTime? startDate) {
    // TODO: implement startDate
  }

  @override
  set status(ShowStatus? status) {
    // TODO: implement status
  }

  @override
  set type(ShowType type) {
    // TODO: implement type
  }

  @override
  set url(String url) {
    // TODO: implement url
  }

  @override
  set actorData(List<ActorData>? actorData) {
    // TODO: implement actorData
  }

  @override
  void copyFromSearchResponse(SearchResponse searchResponse) {
    return $value.copyFromSearchResponse(searchResponse);
  }

  @override
  String toString() {
    return $value.toString();
  }
}
