import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';

import 'package:meiyou_extensions_lib/src/models/media.dart';
import 'package:meiyou_extensions_lib/src/models/media_format.dart';

/// dart_eval bimodal wrapper for [IMedia]
class $IMedia implements IMedia, $Instance {
  /// Configure the [$IMedia] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'IMedia.', __$IMedia$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'IMedia.fromJson', __$IMedia$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.iMedia);

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
                'format',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.mediaFormat, []),
                    nullable: false),
                true),
            BridgeParameter(
                'title',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'url',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'otherTitles',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'status',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.status, []),
                    nullable: true),
                true),
            BridgeParameter(
                'banner',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'poster',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'score',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                    nullable: true),
                true),
            BridgeParameter(
                'description',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'genres',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'initalized',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
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
      'title': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'format': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.mediaFormat, []),
              nullable: false),
          isStatic: false),
      'url': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'otherTitles': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: true),
          isStatic: false),
      'status': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.status, []),
              nullable: true),
          isStatic: false),
      'banner': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'poster': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'score': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
              nullable: true),
          isStatic: false),
      'description': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'genres': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: true),
          isStatic: false),
      'initalized': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'addOtherTitle': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'title',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addGenre': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'genre',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
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

  /// Wrap an [IMedia] in an [$IMedia]
  $IMedia.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'title':
        return $String($value.title);
      case 'format':
        return $MediaFormat.wrap($value.format);
      case 'url':
        return $String($value.url);
      case 'otherTitles':
        return $value.otherTitles == null
            ? $null()
            : $List.wrap(List.generate($value.otherTitles!.length, (index) {
                return $String($value.otherTitles![index]);
              }));
      case 'status':
        return $value.status == null ? $null() : $Status.wrap($value.status!);
      case 'banner':
        return $value.banner == null ? $null() : $String($value.banner!);
      case 'poster':
        return $value.poster == null ? $null() : $String($value.poster!);
      case 'score':
        return $value.score == null ? $null() : $double($value.score!);
      case 'description':
        return $value.description == null
            ? $null()
            : $String($value.description!);
      case 'genres':
        return $value.genres == null
            ? $null()
            : $List.wrap(List.generate($value.genres!.length, (index) {
                return $String($value.genres![index]);
              }));
      case 'initalized':
        return $bool($value.initalized);

      case 'addOtherTitle':
        return __$addOtherTitle;
      case 'addGenre':
        return __$addGenre;
      case 'toJson':
        return __$toJson;
      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  IMedia get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'title':
        $value.title = value.$value as String;
        break;
      case 'format':
        $value.format = value.$reified as MediaFormat;
        break;
      case 'url':
        $value.url = value.$value as String;
        break;
      case 'otherTitles':
        $value.otherTitles = (value.$reified as List?)?.cast<String>();
        break;
      case 'status':
        $value.status = value.$reified as Status?;
        break;
      case 'banner':
        $value.banner = value.$value as String?;
        break;
      case 'poster':
        $value.poster = value.$value as String?;
        break;
      case 'score':
        $value.score = value.$value as double?;
        break;
      case 'description':
        $value.description = value.$value as String?;
        break;
      case 'genres':
        $value.genres = (value.$reified as List?)?.cast<String>();
        break;
      case 'initalized':
        $value.initalized = value.$value as bool;
        break;

      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final IMedia $value;

  @override
  String get title => $value.title;
  @override
  set title(String title) {
    $value.title = title;
  }

  @override
  MediaFormat get format => $value.format;
  @override
  set format(MediaFormat format) {
    $value.format = format;
  }

  @override
  String get url => $value.url;
  @override
  set url(String url) {
    $value.url = url;
  }

  @override
  List<String>? get otherTitles => $value.otherTitles;
  @override
  set otherTitles(List<String>? otherTitles) {
    $value.otherTitles = otherTitles;
  }

  @override
  Status? get status => $value.status;
  @override
  set status(Status? status) {
    $value.status = status;
  }

  @override
  String? get banner => $value.banner;
  @override
  set banner(String? banner) {
    $value.banner = banner;
  }

  @override
  String? get poster => $value.poster;
  @override
  set poster(String? poster) {
    $value.poster = poster;
  }

  @override
  double? get score => $value.score;
  @override
  set score(double? score) {
    $value.score = score;
  }

  @override
  String? get description => $value.description;
  @override
  set description(String? description) {
    $value.description = description;
  }

  @override
  List<String>? get genres => $value.genres;
  @override
  set genres(List<String>? genres) {
    $value.genres = genres;
  }

  @override
  bool get initalized => $value.initalized;
  @override
  set initalized(bool initalized) {
    $value.initalized = initalized;
  }

  @override
  void addOtherTitle(String? title) => $value.addOtherTitle(
        title,
      );
  static const __$addOtherTitle = $Function(_$addOtherTitle);
  static $Value? _$addOtherTitle(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as IMedia;
    final title = args[0]?.$value as String?;
    $this.addOtherTitle(
      title,
    );
    return null;
  }

  @override
  void addGenre(String? genre) => $value.addGenre(
        genre,
      );
  static const __$addGenre = $Function(_$addGenre);
  static $Value? _$addGenre(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as IMedia;
    final genre = args[0]?.$value as String?;
    $this.addGenre(
      genre,
    );
    return null;
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as IMedia;
    final $result = $this.toJson();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }));
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as IMedia;
    final $result = $this.toString();
    return $String($result);
  }

  static const __$IMedia$new = $Function(_$IMedia$new);
  static $Value? _$IMedia$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final format = args[0]?.$reified as MediaFormat? ?? MediaFormat.others;
    final title = args[1]?.$value as String? ?? '';
    final url = args[2]?.$value as String? ?? '';
    final otherTitles = (args[3]?.$reified as List?)?.cast<String>();
    final status = args[4]?.$reified as Status?;
    final banner = args[5]?.$value as String?;
    final poster = args[6]?.$value as String?;
    final score = args[7]?.$value as double?;
    final description = args[8]?.$value as String?;
    final genres = (args[9]?.$reified as List?)?.cast<String>();
    final initalized = args[10]?.$value as bool? ?? false;
    return $IMedia.wrap(IMedia(
      format: format,
      title: title,
      url: url,
      otherTitles: otherTitles,
      status: status,
      banner: banner,
      poster: poster,
      score: score,
      description: description,
      genres: genres,
      initalized: initalized,
    ));
  }

  static const __$IMedia$fromJson = $Function(_$IMedia$fromJson);
  static $Value? _$IMedia$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $IMedia.wrap(IMedia.fromJson(
      json,
    ));
  }
}

class $Status implements $Instance {
  $Status.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        $type.spec!.library, 'Status', $Status.$values);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.status);

  static const $declaration = BridgeEnumDef($type,
      values: ['completed', 'ongoing', 'unknown'],
      methods: {},
      getters: {},
      setters: {},
      fields: {});

  static final $values = {
    'completed': $Status.wrap(Status.completed),
    'ongoing': $Status.wrap(Status.ongoing),
    'unknown': $Status.wrap(Status.unknown),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Status get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final Status $value;

  @override
  String toString() {
    return $value.toString();
  }
}
