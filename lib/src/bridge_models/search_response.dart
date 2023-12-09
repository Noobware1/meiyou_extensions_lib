import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/bridge_models/show_type.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/extenstions/iterable.dart';
import 'package:meiyou_extenstions/src/models/search_response.dart';
import 'package:meiyou_extenstions/src/models/show_type.dart';
import 'package:meiyou_extenstions/src/utils/unwrap.dart';

class $SearchResponse implements SearchResponse, $Instance {
  $SearchResponse.wrap(this.$value);

  late final _superclass = $Object($value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        bridgeLibary, 'SearchResponse.', $SearchResponse.$new);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'SearchResponse'));

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
            params: [],
            namedParams: [
              BridgeParameter('title',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
              BridgeParameter('poster',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
              BridgeParameter('url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
              BridgeParameter(
                  'type', BridgeTypeAnnotation($ShowType.$type), false),
              BridgeParameter(
                  'description',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                      nullable: true),
                  true),
              BridgeParameter(
                  'generes',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list),
                      nullable: true),
                  true),
              BridgeParameter(
                  'rating',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double),
                      nullable: true),
                  true),
              BridgeParameter(
                  'current',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                      nullable: true),
                  true),
              BridgeParameter(
                  'total',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                      nullable: true),
                  true),
            ],
          ),
        ),
      },
      fields: {
        'title': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
        'poster': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
        'url': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string))),
        'type': BridgeFieldDef(BridgeTypeAnnotation($ShowType.$type)),
        'description': BridgeFieldDef(BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.string),
            nullable: true)),
            
        'generes': BridgeFieldDef(BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.list),
            nullable: true)),
        'rating': BridgeFieldDef(BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.double),
            nullable: true)),
        'current': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int), nullable: true)),
        'total': BridgeFieldDef(
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int), nullable: true)),
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'url':
        return $String($value.url);
      case 'poster':
        return $String($value.poster);
      case 'title':
        return $String($value.title);
      case 'type':
        return $ShowType.wrap($value.type);
      case 'description':
        return description == null ? const $null() : $String(description!);
      case 'generes':
        return generes == null
            ? const $null()
            : $List.wrap(generes!.mapAsList((it) => $String(it)));
      case 'rating':
        return rating == null ? const $null() : $double(rating!);
      case 'current':
        return current == null ? const $null() : $int(current!);
      case 'total':
        return total == null ? const $null() : $int(total!);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SearchResponse.wrap(SearchResponse(
      title: args[0]?.$value,
      poster: args[1]?.$value,
      url: args[2]?.$value,
      type: args[3]?.$value,
      description: args[4]?.$value,
      generes: args[5]?.$value != null
          ? unwrapList<String>(args[5]?.$value as List)
          : null,
      rating: args[6]?.$value,
      current: args[7]?.$value,
      total: args[8]?.$value,
    ));
  }

  @override
  SearchResponse get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final SearchResponse $value;

  @override
  ShowType get type => $value.type;

  @override
  String get title => $value.title;

  @override
  String get url => $value.url;

  @override
  String get poster => $value.poster;

  @override
  int? get current => $value.current;

  @override
  String? get description => $value.description;

  @override
  List<String>? get generes => $value.generes;

  @override
  double? get rating => $value.rating;

  @override
  int? get total => $value.total;

  @override
  String toString() {
    return $value.toString();
  }
}
