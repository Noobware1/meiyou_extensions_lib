import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/episode.dart';

class $Episode implements Episode, $Instance {
  $Episode.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        ExtensionLibTypes.episode.library, 'Episode.', $new);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.episode);

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
            params: [],
            namedParams: [
              BridgeParameter('data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                      nullable: true),
                  true),
              BridgeParameter(
                  'season',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                      nullable: true),
                  true),
              BridgeParameter(
                  'episode',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num),
                      nullable: true),
                  true),
              BridgeParameter(
                  'posterImage',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                      nullable: true),
                  true),
              BridgeParameter(
                  'description',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                      nullable: true),
                  true),
              BridgeParameter(
                  'isFiller',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool),
                      nullable: true),
                  true),
              BridgeParameter(
                  'date',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime),
                      nullable: true),
                  true),
            ],
          ),
        ),
      },
      fields: {
        'data': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
        ),
        'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string), nullable: true),
        ),
        'season': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int), nullable: true),
        ),
        'episode': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num), nullable: true),
        ),
        'posterImage': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string), nullable: true),
        ),
        'description': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string), nullable: true),
        ),
        'isFiller': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool), nullable: true),
        ),
        'date': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime),
              nullable: true),
        ),
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'data':
        return $String($value.data);
      case 'name':
        return $value.name != null ? $String($value.name!) : $null();
      case 'description':
        return $value.description != null
            ? $String($value.description!)
            : $null();
      case 'posterImage':
        return $value.posterImage != null
            ? $String($value.posterImage!)
            : $null();
      case 'season':
        return $value.season != null ? $int($value.season!) : $null();
      case 'isFiller':
        return $value.isFiller != null ? $bool($value.isFiller!) : $null();
      case 'date':
        return $value.date != null ? $DateTime.wrap($value.date!) : $null();
      case 'episode':
        return $value.episode != null ? $num($value.episode!) : $null();
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $Episode.wrap(Episode(
      data: args[0]?.$value,
      name: args[1]?.$value,
      season: args[2]?.$value,
      episode: args[3]?.$value,
      posterImage: args[4]?.$value,
      description: args[5]?.$value,
      isFiller: args[6]?.$value,
      date: args[7]?.$value,
    ));
  }

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'data':
        $value.data = value.$reified;
        break;
      case 'name':
        $value.name = value.$reified;
        break;
      case 'description':
        $value.description = value.$reified;
        break;
      case 'posterImage':
        $value.posterImage = value.$reified;
        break;
      case 'season':
        $value.season = value.$reified;
        break;
      case 'isFiller':
        $value.isFiller = value.$reified;
        break;
      case 'date':
        $value.date = value.$reified;
        break;
      case 'episode':
        $value.episode = value.$reified;
        break;
      default:
        return _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Episode $value;

  @override
  String get data => $value.data;

  @override
  DateTime? get date => $value.date;

  @override
  String? get description => $value.description;

  @override
  num? get episode => $value.episode;

  @override
  String? get name => $value.name;

  @override
  String? get posterImage => $value.posterImage;

  @override
  int? get season => $value.season;

  @override
  bool? get isFiller => $value.isFiller;

  @override
  set description(String? description) {
    this.description = description;
  }

  @override
  set episode(num? episode) {
    this.episode = episode;
  }

  @override
  set isFiller(bool? isFiller) {
    this.isFiller = isFiller;
  }

  @override
  set name(String? name) {
    this.name = name;
  }

  @override
  set posterImage(String? posterImage) {
    this.posterImage = posterImage;
  }

  @override
  set season(int? season) {
    this.season = season;
  }

  @override
  set data(String data) {
    this.data = data;
  }

  @override
  set date(DateTime? date) {
    this.date = date;
  }
}
