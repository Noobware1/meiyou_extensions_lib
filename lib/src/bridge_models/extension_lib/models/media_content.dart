import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';

import 'package:meiyou_extensions_lib/src/models/media_content.dart';

/// dart_eval bimodal wrapper for [IMediaContent]
class $IMediaContent implements IMediaContent, $Instance {
  /// Configure the [$IMediaContent] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'IMediaContent.', __$IMediaContent$new.call,
        isBridge: false);
    runtime.registerBridgeFunc($type.spec!.library, 'IMediaContent.fromJson',
        __$IMediaContent$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.iMediaContent);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
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
                'number',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: true),
                true),
            BridgeParameter(
                'season',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: true),
                true),
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'url',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'image',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'isFiller',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: true),
                true),
            BridgeParameter(
                'description',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: false,
      ),
      'fromJson': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'json',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeRef(CoreTypes.string, []),
                      BridgeTypeRef(CoreTypes.dynamic, []),
                    ]),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: true,
      )
    },
    fields: {
      'number': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: true),
          isStatic: false),
      'season': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: true),
          isStatic: false),
      'url': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'image': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'isFiller': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: true),
          isStatic: false),
      'description': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
      'toJson': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeRef(CoreTypes.string, []),
                  BridgeTypeRef(CoreTypes.dynamic, []),
                ]),
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

  /// Wrap an [IMediaContent] in an [$IMediaContent]
  $IMediaContent.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'number':
        return $value.number == null ? $null() : $int($value.number!);
      case 'season':
        return $value.season == null ? $null() : $int($value.season!);
      case 'url':
        return $String($value.url);
      case 'name':
        return $value.name == null ? $null() : $String($value.name!);
      case 'image':
        return $value.image == null ? $null() : $String($value.image!);
      case 'isFiller':
        return $value.isFiller == null ? $null() : $bool($value.isFiller!);
      case 'description':
        return $value.description == null
            ? $null()
            : $String($value.description!);

      case 'toJson':
        return __$toJson;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  IMediaContent get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'number':
        $value.number = value.$value as int?;
        break;
      case 'season':
        $value.season = value.$value as int?;
        break;
      case 'url':
        $value.url = value.$value as String;
        break;
      case 'name':
        $value.name = value.$value as String?;
        break;
      case 'image':
        $value.image = value.$value as String?;
        break;
      case 'isFiller':
        $value.isFiller = value.$value as bool?;
        break;
      case 'description':
        $value.description = value.$value as String?;
        break;

      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final IMediaContent $value;

  @override
  int? get number => $value.number;
  @override
  set number(int? number) {
    $value.number = number;
  }

  @override
  int? get season => $value.season;
  @override
  set season(int? season) {
    $value.season = season;
  }

  @override
  String get url => $value.url;
  @override
  set url(String url) {
    $value.url = url;
  }

  @override
  String? get name => $value.name;
  @override
  set name(String? name) {
    $value.name = name;
  }

  @override
  String? get image => $value.image;
  @override
  set image(String? image) {
    $value.image = image;
  }

  @override
  bool? get isFiller => $value.isFiller;
  @override
  set isFiller(bool? isFiller) {
    $value.isFiller = isFiller;
  }

  @override
  String? get description => $value.description;
  @override
  set description(String? description) {
    $value.description = description;
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as IMediaContent;
    final $result = $this.toJson();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }));
  }

  static const __$IMediaContent$new = $Function(_$IMediaContent$new);
  static $Value? _$IMediaContent$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final number = args[0]?.$value as int?;
    final season = args[1]?.$value as int?;
    final name = args[2]?.$value as String?;
    final url = args[3]?.$value as String;
    final image = args[4]?.$value as String?;
    final isFiller = args[5]?.$value as bool?;
    final description = args[6]?.$value as String?;
    return $IMediaContent.wrap(IMediaContent(
      number: number,
      season: season,
      name: name,
      url: url,
      image: image,
      isFiller: isFiller,
      description: description,
    ));
  }

  static const __$IMediaContent$fromJson = $Function(_$IMediaContent$fromJson);
  static $Value? _$IMediaContent$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $IMediaContent.wrap(IMediaContent.fromJson(
      json,
    ));
  }

  @override
  String toString() {
    return $value.toString();
  }
}
