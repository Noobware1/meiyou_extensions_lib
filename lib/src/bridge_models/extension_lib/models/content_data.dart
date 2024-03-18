import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/quality.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';

import 'package:meiyou_extensions_lib/src/models/content_data.dart';
import 'package:meiyou_extensions_lib/src/models/quality.dart';
import 'package:okhttp/okhttp.dart';

/// dart_eval bimodal wrapper for [ContentData]
class $ContentData implements ContentData, $Instance {
  /// Configure the [$ContentData] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.contentData);

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
          namedParams: [
            BridgeParameter(
                'type',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.contentDataType, []),
                    nullable: false),
                false),
            BridgeParameter(
                'headers',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                    nullable: true),
                true),
            BridgeParameter(
                'extra',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeRef(CoreTypes.string, []),
                      BridgeTypeRef(CoreTypes.dynamic, []),
                    ]),
                    nullable: true),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'type': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(ExtensionLibTypes.contentDataType, []),
              nullable: false),
          isStatic: false),
      'headers': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
              nullable: true),
          isStatic: false),
      'extra': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.map, [
                BridgeTypeRef(CoreTypes.string, []),
                BridgeTypeRef(CoreTypes.dynamic, []),
              ]),
              nullable: true),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [ContentData] in an [$ContentData]
  $ContentData.wrap(this.$value);

  /// Wrap an [ContentData] in an [$ContentData]
  static $Value tryWrap(ContentData? value) {
    if (value == null) {
      return $null();
    }
    if (value is $Video) {
      return $Video.wrap(value);
    }
    return $ContentData.wrap(value);
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'type':
        return $ContentDataType.wrap($value.type);
      case 'headers':
        return $value.headers == null
            ? $null()
            : $Headers.wrap($value.headers!);
      case 'extra':
        return $value.extra == null
            ? $null()
            : $Map
                .wrap(($value.extra as Map<String, dynamic>))
                .map((key, value) {
                return $MapEntry.wrap(MapEntry(
                  key is $Value ? key : $String(key),
                  value is $Value ? value : value,
                ));
              }) as $Value?;

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ContentData get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ContentData $value;

  @override
  ContentDataType get type => $value.type;
  @override
  Headers? get headers => $value.headers;
  @override
  Map<String, dynamic>? get extra => $value.extra;
}

/// dart_eval bimodal wrapper for [Video]
class $Video implements Video, $Instance {
  /// Configure the [$Video] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Video.', __$Video$new.call);
  }

  late final $Instance _superclass = $ContentData.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.video);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.contentData, []),
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
                'sources',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.videoSource, []),
                    ]),
                    nullable: false),
                true),
            BridgeParameter(
                'subtitles',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.subtitle, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'extra',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map, []),
                    nullable: false),
                true),
            BridgeParameter(
                'headers',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                    nullable: false),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'sources': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.videoSource, []),
              ]),
              nullable: false),
          isStatic: false),
      'subtitles': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.subtitle, []),
              ]),
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
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.video, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'sources',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.videoSource, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'subtitles',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.subtitle, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'extra',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.map, [
                        BridgeTypeRef(CoreTypes.string, []),
                        BridgeTypeRef(CoreTypes.dynamic, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'headers',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
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

  /// Wrap an [Video] in an [$Video]
  $Video.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'sources':
        return $List.wrap(List.generate(
            ($value.sources as List<VideoSource>).length, (index) {
          return $VideoSource.wrap($value.sources[index]);
        })) as $Value?;
      case 'subtitles':
        return $value.subtitles == null
            ? $null()
            : $List.wrap(List.generate(
                ($value.subtitles as List<Subtitle>).length, (index) {
                return $Subtitle.wrap($value.subtitles![index]);
              })) as $Value?;

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
  Video get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  Map<String, dynamic>? get extra => $value.extra;

  @override
  Headers? get headers => $value.headers;

  @override
  ContentDataType get type => $value.type;

  @override
  final Video $value;

  @override
  List<VideoSource> get sources => $value.sources;
  @override
  List<Subtitle>? get subtitles => $value.subtitles;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Video;
    final $result = obj.toString();
    return $String($result);
  }

  @override
  Video copyWith(
          {List<VideoSource>? sources,
          List<Subtitle>? subtitles,
          Map<String, dynamic>? extra,
          Headers? headers}) =>
      $value.copyWith(
        sources: sources,
        subtitles: subtitles,
        extra: extra,
        headers: headers,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Video;
    final sources = (args[0]?.$reified as List?)?.cast<VideoSource>();
    final subtitles = (args[1]?.$reified as List?)?.cast<Subtitle>();
    final extra = (args[2]?.$reified as Map?)?.cast<String, dynamic>();
    final headers = args[3]?.$reified as Headers?;
    final $result = obj.copyWith(
      sources: sources,
      subtitles: subtitles,
      extra: extra,
      headers: headers,
    );
    return $Video.wrap($result);
  }

  static const __$Video$new = $Function(_$Video$new);
  static $Value? _$Video$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final sources =
        (args[0]?.$reified as List?)?.cast<VideoSource>() ?? const [];
    final subtitles = (args[1]?.$reified as List?)?.cast<Subtitle>();
    final extra = (args[2]?.$value as Map).map(
      (key, value) => MapEntry((key as $Value).$value as String, value),
    );
    final headers = args[3]?.$value as Headers?;
    return $Video.wrap(Video(
      sources: sources,
      subtitles: subtitles,
      extra: extra,
      headers: headers,
    ));
  }
}

/// dart_eval bimodal wrapper for [VideoSource]
class $VideoSource implements VideoSource, $Instance {
  /// Configure the [$VideoSource] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'VideoSource.', __$VideoSource$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.videoSource);

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
                'url',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'format',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.videoFormat, []),
                    nullable: false),
                true),
            BridgeParameter(
                'quality',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.quality, []),
                    nullable: true),
                true),
            BridgeParameter(
                'title',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'isBackup',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'url': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'format': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.videoFormat, []),
              nullable: false),
          isStatic: false),
      'quality': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.quality, []),
              nullable: true),
          isStatic: false),
      'isBackup': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
      'title': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.videoSource, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.videoFormat, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'quality',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.quality, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'title',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'isBackup',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
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

  /// Wrap an [VideoSource] in an [$VideoSource]
  $VideoSource.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'url':
        return $String($value.url);
      case 'format':
        return $VideoFormat.wrap($value.format);
      case 'quality':
        return $value.quality == null
            ? $null()
            : $Quality.wrap($value.quality!);
      case 'isBackup':
        return $bool($value.isBackup);
      case 'title':
        return $value.title == null ? $null() : $String($value.title!);

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
  VideoSource get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final VideoSource $value;

  @override
  String get url => $value.url;
  @override
  VideoFormat get format => $value.format;
  @override
  Quality? get quality => $value.quality;
  @override
  bool get isBackup => $value.isBackup;
  @override
  String? get title => $value.title;

  @override
  VideoSource copyWith(
          {String? url,
          VideoFormat? format,
          Quality? quality,
          String? title,
          bool? isBackup}) =>
      $value.copyWith(
        url: url,
        format: format,
        quality: quality,
        title: title,
        isBackup: isBackup,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as VideoSource;
    final url = args[0]?.$value as String?;
    final format = args[1]?.$reified as VideoFormat?;
    final quality = args[2]?.$reified as Quality?;
    final title = args[3]?.$value as String?;
    final isBackup = args[4]?.$value as bool?;
    final $result = obj.copyWith(
      url: url,
      format: format,
      quality: quality,
      title: title,
      isBackup: isBackup,
    );
    return $VideoSource.wrap($result);
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as VideoSource;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$VideoSource$new = $Function(_$VideoSource$new);
  static $Value? _$VideoSource$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$value as String? ?? '';
    final format = args[1]?.$reified as VideoFormat? ?? VideoFormat.other;
    final quality = args[2]?.$reified as Quality?;
    final title = args[3]?.$value as String?;
    final isBackup = args[4]?.$value as bool? ?? false;
    return $VideoSource.wrap(VideoSource(
      url: url,
      format: format,
      quality: quality,
      title: title,
      isBackup: isBackup,
    ));
  }
}

/// dart_eval bimodal wrapper for [Subtitle]
class $Subtitle implements Subtitle, $Instance {
  /// Configure the [$Subtitle] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Subtitle.', __$Subtitle$new.call);
    runtime.registerBridgeFunc($type.spec!.library, 'Subtitle.noSubtitle*g',
        __$static$noSubtitle.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.subtitle);

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
                'url',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'format',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.subtitleFormat, []),
                    nullable: true),
                true),
            BridgeParameter(
                'language',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'headers',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'noSubtitle': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.subtitle, []),
              nullable: false),
          isStatic: true),
      'url': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'format': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(ExtensionLibTypes.subtitleFormat, []),
              nullable: true),
          isStatic: false),
      'language': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'headers': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.subtitle, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'format',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.subtitleFormat, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'language',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'headers',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
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

  /// Wrap an [Subtitle] in an [$Subtitle]
  $Subtitle.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'url':
        return $String($value.url);
      case 'format':
        return $value.format == null
            ? $null()
            : $SubtitleFormat.wrap($value.format!);
      case 'language':
        return $value.language == null ? $null() : $String($value.language!);
      case 'headers':
        return $value.headers == null
            ? $null()
            : $Headers.wrap($value.headers!);

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
  Subtitle get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Subtitle $value;

  @override
  String get url => $value.url;
  @override
  SubtitleFormat? get format => $value.format;
  @override
  String? get language => $value.language;
  @override
  Headers? get headers => $value.headers;

  static const __$static$noSubtitle = $Function(_$static$noSubtitle);
  static $Value? _$static$noSubtitle(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = Subtitle.noSubtitle;
    return $Subtitle.wrap($result);
  }

  @override
  Subtitle copyWith(
          {String? url,
          SubtitleFormat? format,
          String? language,
          Headers? headers}) =>
      $value.copyWith(
        url: url,
        format: format,
        language: language,
        headers: headers,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Subtitle;
    final url = args[0]?.$value as String?;
    final format = args[1]?.$reified as SubtitleFormat?;
    final language = args[2]?.$value as String?;
    final headers = args[3]?.$reified as Headers?;
    final $result = obj.copyWith(
      url: url,
      format: format,
      language: language,
      headers: headers,
    );
    return $Subtitle.wrap($result);
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Subtitle;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$Subtitle$new = $Function(_$Subtitle$new);
  static $Value? _$Subtitle$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$value as String? ?? '';
    final format = args[1]?.$reified as SubtitleFormat?;
    final language = args[2]?.$value as String?;
    final headers = args[3]?.$reified as Headers?;
    return $Subtitle.wrap(Subtitle(
      url: url,
      format: format,
      language: language,
      headers: headers,
    ));
  }
}

class $ContentDataType implements $Instance {
  $ContentDataType.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        '', 'ContentDataType', $ContentDataType.$values);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.contentDataType);

  static const $declaration = BridgeEnumDef($type,
      values: ['Video', 'Manga', 'Novel'],
      methods: {},
      getters: {},
      setters: {},
      fields: {});

  static final $values = {
    'Video': $ContentDataType.wrap(ContentDataType.Video),
    'Manga': $ContentDataType.wrap(ContentDataType.Manga),
    'Novel': $ContentDataType.wrap(ContentDataType.Novel),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ContentDataType get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final ContentDataType $value;

  @override
  String toString() {
    return $value.toString();
  }
}

class $VideoFormat implements $Instance {
  $VideoFormat.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues('', 'VideoFormat', $VideoFormat.$values);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.videoFormat);

  static const $declaration = BridgeEnumDef($type,
      values: ['hls', 'mp4', 'dash', 'torrent', 'other'],
      methods: {},
      getters: {},
      setters: {},
      fields: {});

  static final $values = {
    'hls': $VideoFormat.wrap(VideoFormat.hls),
    'mp4': $VideoFormat.wrap(VideoFormat.mp4),
    'dash': $VideoFormat.wrap(VideoFormat.dash),
    'torrent': $VideoFormat.wrap(VideoFormat.torrent),
    'other': $VideoFormat.wrap(VideoFormat.other),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  VideoFormat get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final VideoFormat $value;

  @override
  String toString() {
    return $value.toString();
  }
}

class $SubtitleFormat implements $Instance {
  $SubtitleFormat.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        '', 'SubtitleFormat', $SubtitleFormat.$values);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.subtitleFormat);

  static const $declaration = BridgeEnumDef($type,
      values: ['vtt', 'srt', 'ass'],
      methods: {},
      getters: {},
      setters: {},
      fields: {});

  static final $values = {
    'vtt': $SubtitleFormat.wrap(SubtitleFormat.vtt),
    'srt': $SubtitleFormat.wrap(SubtitleFormat.srt),
    'ass': $SubtitleFormat.wrap(SubtitleFormat.ass),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  SubtitleFormat get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final SubtitleFormat $value;

  @override
  String toString() {
    return $value.toString();
  }
}
