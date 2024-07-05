import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/media_preview.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/media_details.dart';
import 'package:meiyou_extensions_lib/src/models/media_format.dart';
import 'package:meiyou_extensions_lib/src/models/media_preview.dart';

/// dart_eval bimodal wrapper for [MediaDetails]
class $MediaDetails implements MediaDetails, $Instance {
  /// Configure the [$MediaDetails] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'MediaDetails.', __$MediaDetails$new.call,
        isBridge: false);
    runtime.registerBridgeFunc($type.spec!.library, 'MediaDetails.fromJson',
        __$MediaDetails$fromJson.call,
        isBridge: false);

    runtime.registerBridgeFunc($type.spec!.library, 'MediaDetails.builder',
        __$static$method$builder.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.mediaDetails);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
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
                'contentRating',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'description',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'startDate',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
                    nullable: true),
                true),
            BridgeParameter(
                'duration',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
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
                'recommendations',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'characters',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.character, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'content',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.mediaContent, []),
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
      'contentRating': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'description': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'startDate': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
              nullable: true),
          isStatic: false),
      'duration': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
              nullable: true),
          isStatic: false),
      'genres': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: true),
          isStatic: false),
      'recommendations': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
              ]),
              nullable: true),
          isStatic: false),
      'characters': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.character, []),
              ]),
              nullable: true),
          isStatic: false),
      'content': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(ExtensionLibTypes.mediaContent, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
      'builder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: true),
      'newBuilder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [],
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
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [MediaDetails] in an [$MediaDetails]
  $MediaDetails.wrap(this.$value);

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
            : $List.wrap(List.generate(
                ($value.otherTitles as List<String>).length, (index) {
                return $String($value.otherTitles![index]);
              })) as $Value?;
      case 'status':
        return $value.status == null ? $null() : $Status.wrap($value.status!);
      case 'banner':
        return $value.banner == null ? $null() : $String($value.banner!);
      case 'poster':
        return $value.poster == null ? $null() : $String($value.poster!);
      case 'score':
        return $value.score == null ? $null() : $double($value.score!);
      case 'contentRating':
        return $value.contentRating == null
            ? $null()
            : $String($value.contentRating!);
      case 'description':
        return $value.description == null
            ? $null()
            : $String($value.description!);
      case 'startDate':
        return $value.startDate == null
            ? $null()
            : $DateTime.wrap($value.startDate!);
      case 'duration':
        return $value.duration == null
            ? $null()
            : $Duration.wrap($value.duration!);
      case 'genres':
        return $value.genres == null
            ? $null()
            : $List.wrap(
                List.generate(($value.genres as List<String>).length, (index) {
                return $String($value.genres![index]);
              })) as $Value?;
      case 'recommendations':
        return $value.recommendations == null
            ? $null()
            : $List.wrap(List.generate(
                ($value.recommendations as List<MediaPreview>).length, (index) {
                return $MediaPreview.wrap($value.recommendations![index]);
              })) as $Value?;
      case 'characters':
        return $value.characters == null
            ? $null()
            : $List.wrap(List.generate(
                ($value.characters as List<Character>).length, (index) {
                return $Character.wrap($value.characters![index]);
              })) as $Value?;
      case 'content':
        return $value.content == null
            ? $null()
            : $MediaContent.wrap($value.content!);

      case 'newBuilder':
        return __$newBuilder;
      case 'toJson':
        return __$toJson;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  MediaDetails get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final MediaDetails $value;

  @override
  String get title => $value.title;
  @override
  MediaFormat get format => $value.format;
  @override
  String get url => $value.url;
  @override
  List<String>? get otherTitles => $value.otherTitles;
  @override
  Status? get status => $value.status;
  @override
  String? get banner => $value.banner;
  @override
  String? get poster => $value.poster;
  @override
  double? get score => $value.score;
  @override
  String? get contentRating => $value.contentRating;
  @override
  String? get description => $value.description;
  @override
  DateTime? get startDate => $value.startDate;
  @override
  Duration? get duration => $value.duration;
  @override
  List<String>? get genres => $value.genres;
  @override
  List<MediaPreview>? get recommendations => $value.recommendations;
  @override
  List<Character>? get characters => $value.characters;
  @override
  MediaContent? get content => $value.content;

  @override
  MediaDetailsBuilder newBuilder() => $value.newBuilder();
  static const __$newBuilder = $Function(_$newBuilder);
  static $Value? _$newBuilder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetails;
    final $result = $this.newBuilder();
    return $MediaDetailsBuilder.wrap($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetails;
    final $result = $this.toJson();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }));
  }

  static const __$static$method$builder = $Function(_$static$method$builder);
  static $Value? _$static$method$builder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = MediaDetails.builder();
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$MediaDetails$new = $Function(_$MediaDetails$new);
  static $Value? _$MediaDetails$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final format = args[0]?.$reified as MediaFormat? ?? MediaFormat.others;
    final title = args[1]?.$value as String? ?? '';
    final url = args[2]?.$value as String? ?? '';
    final otherTitles = (args[3]?.$reified as List?)?.cast<String>();
    final status = args[4]?.$reified as Status?;
    final banner = args[5]?.$value as String?;
    final poster = args[6]?.$value as String?;
    final score = args[7]?.$value as double?;
    final contentRating = args[8]?.$value as String?;
    final description = args[9]?.$value as String?;
    final startDate = args[10]?.$reified as DateTime?;
    final duration = args[11]?.$reified as Duration?;
    final genres = (args[12]?.$reified as List?)?.cast<String>();
    final recommendations = (args[13]?.$reified as List?)?.cast<MediaPreview>();
    final characters = (args[14]?.$reified as List?)?.cast<Character>();
    final content = args[15]?.$reified as MediaContent?;
    return $MediaDetails.wrap(MediaDetails(
      format: format,
      title: title,
      url: url,
      otherTitles: otherTitles,
      status: status,
      banner: banner,
      poster: poster,
      score: score,
      contentRating: contentRating,
      description: description,
      startDate: startDate,
      duration: duration,
      genres: genres,
      recommendations: recommendations,
      characters: characters,
      content: content,
    ));
  }

  static const __$MediaDetails$fromJson = $Function(_$MediaDetails$fromJson);
  static $Value? _$MediaDetails$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $MediaDetails.wrap(MediaDetails.fromJson(
      json,
    ));
  }

  @override
  String toString() {
    return $value.toString();
  }
}

/// dart_eval wrapper for [MediaDetailsBuilder]
class $MediaDetailsBuilder implements $Instance {
  /// Configure the [$MediaDetailsBuilder] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder);

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
          params: [
            BridgeParameter(
                'mediaDetails',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.mediaDetails, []),
                    nullable: true),
                true)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {
      'title': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'title',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'format': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.mediaFormat, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'url': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
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
      'otherTitles': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'otherTitles',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addOtherTitle': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'otherTitle',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'status': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'status',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.status, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'banner': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'banner',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'poster': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'poster',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'score': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'score',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'contentRating': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'contentRating',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'description': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'description',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'startDate': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'startDate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'duration': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'duration',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'genres': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'genres',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addGenre': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
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
      'recommendations': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'recommendations',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
                      ]),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addRecommendation': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'recommendation',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.mediaPreview, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'characters': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'characters',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.character, []),
                      ]),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addCharacter': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'character',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.character, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'content': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetailsBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'content',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.mediaContent, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'build': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.mediaDetails, []),
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

  /// Wrap an [MediaDetailsBuilder] in an [$MediaDetailsBuilder]
  $MediaDetailsBuilder.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'title':
        return __$title;
      case 'format':
        return __$format;
      case 'url':
        return __$url;
      case 'otherTitles':
        return __$otherTitles;
      case 'addOtherTitle':
        return __$addOtherTitle;
      case 'status':
        return __$status;
      case 'banner':
        return __$banner;
      case 'poster':
        return __$poster;
      case 'score':
        return __$score;
      case 'contentRating':
        return __$contentRating;
      case 'description':
        return __$description;
      case 'startDate':
        return __$startDate;
      case 'duration':
        return __$duration;
      case 'genres':
        return __$genres;
      case 'addGenre':
        return __$addGenre;
      case 'recommendations':
        return __$recommendations;
      case 'addRecommendation':
        return __$addRecommendation;
      case 'characters':
        return __$characters;
      case 'addCharacter':
        return __$addCharacter;
      case 'content':
        return __$content;
      case 'build':
        return __$build;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  MediaDetailsBuilder get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final MediaDetailsBuilder $value;

  static const __$title = $Function(_$title);
  static $Value? _$title(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final title = args[0]?.$value as String;
    final $result = $this.title(
      title,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$format = $Function(_$format);
  static $Value? _$format(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final format = args[0]?.$reified as MediaFormat;
    final $result = $this.format(
      format,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$url = $Function(_$url);
  static $Value? _$url(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final url = args[0]?.$value as String;
    final $result = $this.url(
      url,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$otherTitles = $Function(_$otherTitles);
  static $Value? _$otherTitles(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final otherTitles = (args[0]?.$reified as List?)?.cast<String>();
    final $result = $this.otherTitles(
      otherTitles,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$addOtherTitle = $Function(_$addOtherTitle);
  static $Value? _$addOtherTitle(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final otherTitle = args[0]?.$value as String?;
    final $result = $this.addOtherTitle(
      otherTitle,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$status = $Function(_$status);
  static $Value? _$status(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final status = args[0]?.$reified as Status?;
    final $result = $this.status(
      status,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$banner = $Function(_$banner);
  static $Value? _$banner(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final banner = args[0]?.$value as String?;
    final $result = $this.banner(
      banner,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$poster = $Function(_$poster);
  static $Value? _$poster(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final poster = args[0]?.$value as String?;
    final $result = $this.poster(
      poster,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$score = $Function(_$score);
  static $Value? _$score(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final score = args[0]?.$value as double?;
    final $result = $this.score(
      score,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$contentRating = $Function(_$contentRating);
  static $Value? _$contentRating(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final contentRating = args[0]?.$value as String?;
    final $result = $this.contentRating(
      contentRating,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$description = $Function(_$description);
  static $Value? _$description(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final description = args[0]?.$value as String?;
    final $result = $this.description(
      description,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$startDate = $Function(_$startDate);
  static $Value? _$startDate(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final startDate = args[0]?.$reified as DateTime?;
    final $result = $this.startDate(
      startDate,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$duration = $Function(_$duration);
  static $Value? _$duration(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final duration = args[0]?.$reified as Duration?;
    final $result = $this.duration(
      duration,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$genres = $Function(_$genres);
  static $Value? _$genres(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final genres = (args[0]?.$reified as List?)?.cast<String>();
    final $result = $this.genres(
      genres,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$addGenre = $Function(_$addGenre);
  static $Value? _$addGenre(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final genre = args[0]?.$value as String?;
    final $result = $this.addGenre(
      genre,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$recommendations = $Function(_$recommendations);
  static $Value? _$recommendations(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final recommendations = (args[0]?.$reified as List?)?.cast<MediaPreview>();
    final $result = $this.recommendations(
      recommendations,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$addRecommendation = $Function(_$addRecommendation);
  static $Value? _$addRecommendation(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final recommendation = args[0]?.$reified as MediaPreview?;
    final $result = $this.addRecommendation(
      recommendation,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$characters = $Function(_$characters);
  static $Value? _$characters(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final characters = (args[0]?.$reified as List?)?.cast<Character>();
    final $result = $this.characters(
      characters,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$addCharacter = $Function(_$addCharacter);
  static $Value? _$addCharacter(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final character = args[0]?.$reified as Character?;
    final $result = $this.addCharacter(
      character,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$content = $Function(_$content);
  static $Value? _$content(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final content = args[0]?.$reified as MediaContent?;
    final $result = $this.content(
      content,
    );
    return $MediaDetailsBuilder.wrap($result);
  }

  static const __$build = $Function(_$build);
  static $Value? _$build(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaDetailsBuilder;
    final $result = $this.build();
    return $MediaDetails.wrap($result);
  }
}

/// dart_eval bimodal wrapper for [MediaContent]
class $MediaContent implements MediaContent, $Instance {
  /// Configure the [$MediaContent] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'MediaContent.fromJson',
        __$MediaContent$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.mediaContent);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {
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
    fields: {},
    methods: {
      'when': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                  nullable: false),
              params: [
                BridgeParameter(
                    'movie',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                        nullable: false),
                    false),
                BridgeParameter(
                    'tvSeries',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                        nullable: false),
                    false),
                BridgeParameter(
                    'episodicContent',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                        nullable: false),
                    false),
                BridgeParameter(
                    'lazy',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                        nullable: false),
                    false)
              ],
              namedParams: [],
              generics: {
                'T': BridgeGenericParam(),
              }),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [MediaContent] in an [$MediaContent]
  $MediaContent.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'when':
        return __$when;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  MediaContent get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final MediaContent $value;

  @override
  T when<T>(
          T Function(Movie) movie,
          T Function(TvSeries) tvSeries,
          T Function(EpisodicContent) episodicContent,
          T Function(LazyMediaContent) lazy) =>
      $value.when(
        movie,
        tvSeries,
        episodicContent,
        lazy,
      );
  static const __$when = $Function(_$when);
  static $Value? _$when(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaContent;
    final movie = args[0] as EvalCallable;
    final tvSeries = args[1] as EvalCallable;
    final episodicContent = args[2] as EvalCallable;
    final lazy = args[3] as EvalCallable;
    final $result = $this.when(
      (a) => movie.call(runtime, null, [$Movie.wrap(a)]),
      (b) => tvSeries.call(runtime, null, [$TvSeries.wrap(b)]),
      (c) => episodicContent.call(runtime, null, [$EpisodicContent.wrap(c)]),
      (e) => lazy.call(runtime, null, [$LazyMediaContent.wrap(e)]),
    );
    return $result;
  }

  static const __$MediaContent$fromJson = $Function(_$MediaContent$fromJson);
  static $Value? _$MediaContent$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $MediaContent.wrap(MediaContent.fromJson(
      json,
    ));
  }
}

/// dart_eval bimodal wrapper for [LazyMediaContent]
class $LazyMediaContent implements LazyMediaContent, $Instance {
  /// Configure the [$LazyMediaContent] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'LazyMediaContent.', __$LazyMediaContent$new.call,
        isBridge: false);
  }

  late final $Instance _superclass = $MediaContent.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.lazyMediaContent);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [
        BridgeTypeRef(ExtensionLibTypes.mediaContent, []),
      ],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                '_lazyCallback',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {},
    methods: {
      'call': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(ExtensionLibTypes.mediaContent, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'when': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            generics: {'T': BridgeGenericParam()},
            params: [
              BridgeParameter(
                  'movie',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'tvSeries',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'episodicContent',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'lazy',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [LazyMediaContent] in an [$LazyMediaContent]
  $LazyMediaContent.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'call':
        return __$call;
      case 'when':
        return __$when;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  LazyMediaContent get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final LazyMediaContent $value;

  @override
  Future<MediaContent> call() => $value.call();
  static const __$call = $Function(_$call);
  static $Value? _$call(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as LazyMediaContent;
    final $result = $this.call();
    return $Future.wrap($result.then((value) {
      if (value is Movie) return $Movie.wrap(value);
      if (value is TvSeries) return $TvSeries.wrap(value);
      if (value is EpisodicContent) return $EpisodicContent.wrap(value);
      if (value is LazyMediaContent) return $LazyMediaContent.wrap(value);
      throw StateError('Invalid type: ${value.runtimeType}');
    }));
  }

  @override
  T when<T>(
          T Function(Movie) movie,
          T Function(TvSeries) tvSeries,
          T Function(EpisodicContent) episodicContent,
          T Function(LazyMediaContent) lazy) =>
      $value.when(
        movie,
        tvSeries,
        episodicContent,
        lazy,
      );
  static const __$when = $Function(_$when);
  static $Value? _$when(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as LazyMediaContent;
    final movie = args[0] as EvalCallable;
    final tvSeries = args[1] as EvalCallable;
    final episodicContent = args[2] as EvalCallable;
    final lazy = args[3] as EvalCallable;
    final $result = $this.when(
      (a) => movie.call(runtime, null, [$Movie.wrap(a)]),
      (b) => tvSeries.call(runtime, null, [$TvSeries.wrap(b)]),
      (c) => episodicContent.call(runtime, null, [$EpisodicContent.wrap(c)]),
      (e) => lazy.call(runtime, null, [$LazyMediaContent.wrap(e)]),
    );
    return $result;
  }

  static const __$LazyMediaContent$new = $Function(_$LazyMediaContent$new);
  static $Value? _$LazyMediaContent$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final lazyCallback = args[0] as EvalCallable;
    return $LazyMediaContent.wrap(LazyMediaContent(() =>
        (lazyCallback.call(runtime, null, [])?.$value as Future)
            .then((value) => value as MediaContent)));
  }
}

/// dart_eval bimodal wrapper for [Movie]
class $Movie implements Movie, $Instance {
  /// Configure the [$Movie] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'Movie.', __$Movie$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Movie.fromJson', __$Movie$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $MediaContent.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.movie);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [
        BridgeTypeRef(ExtensionLibTypes.mediaContent, []),
      ],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'playUrl',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false)
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
      'playUrl': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'when': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            generics: {'T': BridgeGenericParam()},
            params: [
              BridgeParameter(
                  'movie',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'tvSeries',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'episodicContent',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'lazy',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
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

  /// Wrap an [Movie] in an [$Movie]
  $Movie.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'playUrl':
        return $String($value.playUrl);

      case 'when':
        return __$when;
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
  Movie get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Movie $value;

  @override
  String get playUrl => $value.playUrl;

  @override
  T when<T>(
          T Function(Movie) movie,
          T Function(TvSeries) tvSeries,
          T Function(EpisodicContent) episodicContent,
          T Function(LazyMediaContent) lazy) =>
      $value.when(
        movie,
        tvSeries,
        episodicContent,
        lazy,
      );
  static const __$when = $Function(_$when);
  static $Value? _$when(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Movie;
    final movie = args[0] as EvalCallable;
    final tvSeries = args[1] as EvalCallable;
    final episodicContent = args[2] as EvalCallable;
    final lazy = args[3] as EvalCallable;
    final $result = $this.when(
      (a) => movie.call(runtime, null, [$Movie.wrap(a)]),
      (b) => tvSeries.call(runtime, null, [$TvSeries.wrap(b)]),
      (c) => episodicContent.call(runtime, null, [$EpisodicContent.wrap(c)]),
      (e) => lazy.call(runtime, null, [$LazyMediaContent.wrap(e)]),
    );
    return $result;
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Movie;
    final $result = $this.toJson();
    return $Map.wrap(($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }))) as $Value?;
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Movie;
    final $result = $this.toString();
    return $String($result);
  }

  static const __$Movie$new = $Function(_$Movie$new);
  static $Value? _$Movie$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final playUrl = args[0]?.$value as String;
    return $Movie.wrap(Movie(
      playUrl: playUrl,
    ));
  }

  static const __$Movie$fromJson = $Function(_$Movie$fromJson);
  static $Value? _$Movie$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $Movie.wrap(Movie.fromJson(
      json,
    ));
  }
}

/// dart_eval bimodal wrapper for [TvSeries]
class $TvSeries implements TvSeries, $Instance {
  /// Configure the [$TvSeries] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'TvSeries.', __$TvSeries$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'TvSeries.fromJson', __$TvSeries$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $MediaContent.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.tvSeries);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [
        BridgeTypeRef(ExtensionLibTypes.mediaContent, []),
      ],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'seasons',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.seasonList, []),
                    ]),
                    nullable: false),
                false)
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
      'seasons': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.seasonList, []),
              ]),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'when': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            generics: {'T': BridgeGenericParam()},
            params: [
              BridgeParameter(
                  'movie',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'tvSeries',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'episodicContent',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'lazy',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
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
      case 'seasons':
        return $List.wrap(List.generate($value.seasons.length, (index) {
          return $SeasonList.wrap($value.seasons[index]);
        }));

      case 'when':
        return __$when;
      case 'toJson':
        return __$toJson;
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
  List<SeasonList> get seasons => $value.seasons;

  @override
  T when<T>(
          T Function(Movie) movie,
          T Function(TvSeries) tvSeries,
          T Function(EpisodicContent) episodicContent,
          T Function(LazyMediaContent) lazy) =>
      $value.when(
        movie,
        tvSeries,
        episodicContent,
        lazy,
      );
  static const __$when = $Function(_$when);
  static $Value? _$when(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as TvSeries;
    final movie = args[0] as EvalCallable;
    final tvSeries = args[1] as EvalCallable;
    final episodicContent = args[2] as EvalCallable;
    final lazy = args[3] as EvalCallable;
    final $result = $this.when(
      (a) => movie.call(runtime, null, [$Movie.wrap(a)]),
      (b) => tvSeries.call(runtime, null, [$TvSeries.wrap(b)]),
      (c) => episodicContent.call(runtime, null, [$EpisodicContent.wrap(c)]),
      (e) => lazy.call(runtime, null, [$LazyMediaContent.wrap(e)]),
    );
    return $result;
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as TvSeries;
    final $result = $this.toJson();
    return $Map.wrap(($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    })));
  }

  static const __$TvSeries$new = $Function(_$TvSeries$new);
  static $Value? _$TvSeries$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final seasons = (args[0]?.$reified as List).cast<SeasonList>();
    return $TvSeries.wrap(TvSeries(
      seasons: seasons,
    ));
  }

  static const __$TvSeries$fromJson = $Function(_$TvSeries$fromJson);
  static $Value? _$TvSeries$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $TvSeries.wrap(TvSeries.fromJson(
      json,
    ));
  }
}

/// dart_eval bimodal wrapper for [EpisodicContent]
class $EpisodicContent implements EpisodicContent, $Instance {
  /// Configure the [$EpisodicContent] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'EpisodicContent.', __$EpisodicContent$new.call,
        isBridge: false);
    runtime.registerBridgeFunc($type.spec!.library, 'EpisodicContent.fromJson',
        __$EpisodicContent$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $MediaContent.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.episodicContent);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [
        BridgeTypeRef(ExtensionLibTypes.mediaContent, []),
      ],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'episodes',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.episode, []),
                    ]),
                    nullable: false),
                false)
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
      'episodes': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.episode, []),
              ]),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'when': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T', []),
                nullable: false),
            generics: {'T': BridgeGenericParam()},
            params: [
              BridgeParameter(
                  'movie',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'tvSeries',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'episodicContent',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'lazy',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
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
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [EpisodicContent] in an [$EpisodicContent]
  $EpisodicContent.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'episodes':
        return $List.wrap(List.generate($value.episodes.length, (index) {
          return $Episode.wrap($value.episodes[index]);
        })) as $Value?;

      case 'when':
        return __$when;
      case 'toJson':
        return __$toJson;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  EpisodicContent get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final EpisodicContent $value;

  @override
  List<Episode> get episodes => $value.episodes;

  @override
  T when<T>(
          T Function(Movie) movie,
          T Function(TvSeries) tvSeries,
          T Function(EpisodicContent) episodicContent,
          T Function(LazyMediaContent) lazy) =>
      $value.when(
        movie,
        tvSeries,
        episodicContent,
        lazy,
      );
  static const __$when = $Function(_$when);
  static $Value? _$when(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as EpisodicContent;
    final movie = args[0] as EvalCallable;
    final tvSeries = args[1] as EvalCallable;
    final episodicContent = args[2] as EvalCallable;
    final lazy = args[3] as EvalCallable;
    final $result = $this.when(
      (a) => movie.call(runtime, null, [$Movie.wrap(a)]),
      (b) => tvSeries.call(runtime, null, [$TvSeries.wrap(b)]),
      (c) => episodicContent.call(runtime, null, [$EpisodicContent.wrap(c)]),
      (e) => lazy.call(runtime, null, [$LazyMediaContent.wrap(e)]),
    );
    return $result;
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as EpisodicContent;
    final $result = $this.toJson();
    return $Map.wrap(($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    })));
  }

  static const __$EpisodicContent$new = $Function(_$EpisodicContent$new);
  static $Value? _$EpisodicContent$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final episodes = (args[0]?.$reified as List).cast<Episode>();
    return $EpisodicContent.wrap(EpisodicContent(
      episodes: episodes,
    ));
  }

  static const __$EpisodicContent$fromJson =
      $Function(_$EpisodicContent$fromJson);
  static $Value? _$EpisodicContent$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $EpisodicContent.wrap(EpisodicContent.fromJson(
      json,
    ));
  }
}

/// dart_eval bimodal wrapper for [SeasonList]
class $SeasonList implements SeasonList, $Instance {
  /// Configure the [$SeasonList] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'SeasonList.', __$SeasonList$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'SeasonList.fromJson', __$SeasonList$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.seasonList);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
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
                'season',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.season, []),
                    nullable: false),
                false),
            BridgeParameter(
                'episodes',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.episode, []),
                    ]),
                    nullable: false),
                false)
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
      'season': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.season, []),
              nullable: false),
          isStatic: false),
      'episodes': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.episode, []),
              ]),
              nullable: false),
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
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.seasonList, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'season',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.season, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'episodes',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.episode, []),
                      ]),
                      nullable: true),
                  true)
            ],
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

  /// Wrap an [SeasonList] in an [$SeasonList]
  $SeasonList.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'season':
        return $Season.wrap($value.season);
      case 'episodes':
        return $List.wrap(List.generate($value.episodes.length, (index) {
          return $Episode.wrap($value.episodes[index]);
        })) as $Value?;
      case 'toJson':
        return __$toJson;
      case 'copyWith':
        return __$copyWith;
      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  SeasonList get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final SeasonList $value;

  @override
  Season get season => $value.season;
  @override
  List<Episode> get episodes => $value.episodes;

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as SeasonList;
    final $result = $this.toJson();
    return $Map.wrap(($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    })));
  }

  @override
  SeasonList copyWith({Season? season, List<Episode>? episodes}) =>
      $value.copyWith(
        season: season,
        episodes: episodes,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as SeasonList;
    final season = args[0]?.$reified as Season?;
    final episodes = (args[1]?.$reified as List?)?.cast<Episode>();
    final $result = $this.copyWith(
      season: season,
      episodes: episodes,
    );
    return $SeasonList.wrap($result);
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as SeasonList;
    final $result = $this.toString();
    return $String($result);
  }

  static const __$SeasonList$new = $Function(_$SeasonList$new);
  static $Value? _$SeasonList$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final season = args[0]?.$reified as Season;
    final episodes = (args[1]?.$reified as List).cast<Episode>();
    return $SeasonList.wrap(SeasonList(
      season: season,
      episodes: episodes,
    ));
  }

  static const __$SeasonList$fromJson = $Function(_$SeasonList$fromJson);
  static $Value? _$SeasonList$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $SeasonList.wrap(SeasonList.fromJson(
      json,
    ));
  }
}

/// dart_eval bimodal wrapper for [Season]
class $Season implements Season, $Instance {
  /// Configure the [$Season] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Season.', __$Season$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Season.fromJson', __$Season$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.season);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
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
                'name',
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
      'name': BridgeFieldDef(
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
      'toString': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.season, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'number',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Season] in an [$Season]
  $Season.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'number':
        return $value.number == null ? $null() : $int($value.number!);
      case 'name':
        return $value.name == null ? $null() : $String($value.name!);

      case 'toJson':
        return __$toJson;
      case 'toString':
        return __$toString;
      case 'copyWith':
        return __$copyWith;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Season get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Season $value;

  @override
  int? get number => $value.number;
  @override
  String? get name => $value.name;

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Season;
    final $result = $this.toJson();
    return $Map.wrap(($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    })));
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Season;
    final $result = $this.toString();
    return $String($result);
  }

  @override
  Season copyWith({int? number, String? name}) => $value.copyWith(
        number: number,
        name: name,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Season;
    final number = args[0]?.$value as int?;
    final name = args[1]?.$value as String?;
    final $result = $this.copyWith(
      number: number,
      name: name,
    );
    return $Season.wrap($result);
  }

  static const __$Season$new = $Function(_$Season$new);
  static $Value? _$Season$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final number = args[0]?.$value as int?;
    final name = args[1]?.$value as String?;
    return $Season.wrap(Season(
      number: number,
      name: name,
    ));
  }

  static const __$Season$fromJson = $Function(_$Season$fromJson);
  static $Value? _$Season$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $Season.wrap(Season.fromJson(
      json,
    ));
  }
}

/// dart_eval bimodal wrapper for [Episode]
class $Episode implements Episode, $Instance {
  /// Configure the [$Episode] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Episode.', __$Episode$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Episode.fromJson', __$Episode$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.episode);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
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
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'data',
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
                true),
            BridgeParameter(
                'date',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
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
      'data': BridgeFieldDef(
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
      'date': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.episode, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'number',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true),
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
                  true),
              BridgeParameter(
                  'date',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
                      nullable: true),
                  true)
            ],
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

  /// Wrap an [Episode] in an [$Episode]
  $Episode.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'number':
        return $value.number == null ? $null() : $int($value.number!);
      case 'data':
        return $String($value.data);
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
      case 'date':
        return $value.date == null ? $null() : $DateTime.wrap($value.date!);

      case 'copyWith':
        return __$copyWith;
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
  Episode get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Episode $value;

  @override
  int? get number => $value.number;
  @override
  String get data => $value.data;
  @override
  String? get name => $value.name;
  @override
  String? get image => $value.image;
  @override
  bool? get isFiller => $value.isFiller;
  @override
  String? get description => $value.description;
  @override
  DateTime? get date => $value.date;

  @override
  Episode copyWith(
          {String? data,
          String? name,
          int? number,
          String? image,
          bool? isFiller,
          String? description,
          DateTime? date}) =>
      $value.copyWith(
        data: data,
        name: name,
        number: number,
        image: image,
        isFiller: isFiller,
        description: description,
        date: date,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Episode;
    final data = args[0]?.$value as String?;
    final name = args[1]?.$value as String?;
    final number = args[2]?.$value as int?;
    final image = args[3]?.$value as String?;
    final isFiller = args[4]?.$value as bool?;
    final description = args[5]?.$value as String?;
    final date = args[6]?.$reified as DateTime?;
    final $result = $this.copyWith(
      data: data,
      name: name,
      number: number,
      image: image,
      isFiller: isFiller,
      description: description,
      date: date,
    );
    return $Episode.wrap($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Episode;
    final $result = $this.toJson();
    return $Map.wrap(($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    })));
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Episode;
    final $result = $this.toString();
    return $String($result);
  }

  static const __$Episode$new = $Function(_$Episode$new);
  static $Value? _$Episode$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final number = args[0]?.$value as int?;
    final name = args[1]?.$value as String?;
    final data = args[2]?.$value as String;
    final image = args[3]?.$value as String?;
    final isFiller = args[4]?.$value as bool?;
    final description = args[5]?.$value as String?;
    final date = args[6]?.$reified as DateTime?;
    return $Episode.wrap(Episode(
      number: number,
      name: name,
      data: data,
      image: image,
      isFiller: isFiller,
      description: description,
      date: date,
    ));
  }

  static const __$Episode$fromJson = $Function(_$Episode$fromJson);
  static $Value? _$Episode$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $Episode.wrap(Episode.fromJson(
      json,
    ));
  }
}

/// dart_eval bimodal wrapper for [Character]
class $Character implements Character, $Instance {
  /// Configure the [$Character] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Character.', __$Character$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Character.fromJson', __$Character$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.character);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
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
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'image',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'role',
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
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'image': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'role': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
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
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.character, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'image',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'role',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Character] in an [$Character]
  $Character.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);
      case 'image':
        return $value.image == null ? $null() : $String($value.image!);
      case 'role':
        return $value.role == null ? $null() : $String($value.role!);

      case 'toString':
        return __$toString;
      case 'toJson':
        return __$toJson;
      case 'copyWith':
        return __$copyWith;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Character get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Character $value;

  @override
  String get name => $value.name;
  @override
  String? get image => $value.image;
  @override
  String? get role => $value.role;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Character;
    final $result = $this.toString();
    return $String($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Character;
    final $result = $this.toJson();
    return $Map.wrap(($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    })));
  }

  @override
  Character copyWith({String? name, String? image, String? role}) =>
      $value.copyWith(
        name: name,
        image: image,
        role: role,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Character;
    final name = args[0]?.$value as String?;
    final image = args[1]?.$value as String?;
    final role = args[2]?.$value as String?;
    final $result = $this.copyWith(
      name: name,
      image: image,
      role: role,
    );
    return $Character.wrap($result);
  }

  static const __$Character$new = $Function(_$Character$new);
  static $Value? _$Character$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String? ?? '';
    final image = args[1]?.$value as String?;
    final role = args[2]?.$value as String?;
    return $Character.wrap(Character(
      name: name,
      image: image,
      role: role,
    ));
  }

  static const __$Character$fromJson = $Function(_$Character$fromJson);
  static $Value? _$Character$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $Character.wrap(Character.fromJson(
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
