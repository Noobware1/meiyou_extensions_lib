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

  /// Configure the [$ContentData] wrapper for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'ContentData.fromJson',
        __$ContentData$fromJson.call);
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
                false),
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
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
            : runtime.wrap($value.extra, recursive: true) as $Value?;
      case 'toJson':
        return __$toJson;
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

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as ContentData;
    final $result = $this.toJson();
    return runtime.wrap($result, recursive: true);
  }

  static const __$ContentData$fromJson = $Function(_$ContentData$fromJson);
  static $Value? _$ContentData$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    final $result = ContentData.fromJson(json);
    if ($result is Video) {
      return $Video.wrap($result);
    }
    return $ContentData.wrap($result);
  }

  @override
  List<Object?> get props => $value.props;

  @override
  bool? get stringify => $value.stringify;
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
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Video.fromJson', __$Video$fromJson.call);
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
                'intro',
                BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.intro, []),
                    nullable: true),
                true),
            BridgeParameter(
                'outro',
                BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.outro, []),
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
                false),
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
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
      'intro': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.intro, []),
              nullable: true),
          isStatic: false),
      'outro': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.outro, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
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
                  'intro',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.intro, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'outro',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.outro, []),
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

  /// Wrap an [Video] in an [$Video]
  $Video.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'sources':
        return $List.wrap(List.generate((sources).length, (index) {
          return $VideoSource.wrap(sources[index]);
        })) as $Value?;
      case 'subtitles':
        return subtitles == null
            ? $null()
            : $List.wrap(
                List.generate((subtitles as List<Subtitle>).length, (index) {
                return $Subtitle.wrap(subtitles![index]);
              })) as $Value?;
      case 'intro':
        return intro == null ? $null() : $Intro.wrap(intro!);
      case 'outro':
        return outro == null ? $null() : $Outro.wrap(outro!);
      case 'copyWith':
        return __$copyWith;
      case 'toJson':
        return __$toJson;
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
  Intro? get intro => $value.intro;

  @override
  Outro? get outro => $value.outro;

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Video;
    final $result = $this.toJson();
    return runtime.wrap($result, recursive: true);
  }

  @override
  Video copyWith(
          {List<VideoSource>? sources,
          List<Subtitle>? subtitles,
          Intro? intro,
          Outro? outro,
          Map<String, dynamic>? extra,
          Headers? headers}) =>
      $value.copyWith(
        sources: sources,
        subtitles: subtitles,
        intro: intro,
        outro: outro,
        extra: extra,
        headers: headers,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Video;
    final sources = (args[0]?.$reified as List?)?.cast<VideoSource>();
    final subtitles = (args[1]?.$reified as List?)?.cast<Subtitle>();
    final intro = args[2]?.$value as Intro?;
    final outro = args[3]?.$value as Outro?;
    final extra = (args[4]?.$reified as Map?)?.cast<String, dynamic>();
    final headers = args[5]?.$reified as Headers?;
    final $result = obj.copyWith(
      sources: sources,
      subtitles: subtitles,
      intro: intro,
      outro: outro,
      extra: extra,
      headers: headers,
    );
    return $Video.wrap($result);
  }

  static const __$Video$fromJson = $Function(_$Video$fromJson);
  static $Value? _$Video$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    final $result = Video.fromJson(json);
    return $Video.wrap($result);
  }

  static const __$Video$new = $Function(_$Video$new);
  static $Value? _$Video$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final sources =
        (args[0]?.$reified as List?)?.cast<VideoSource>() ?? const [];
    final subtitles = (args[1]?.$reified as List?)?.cast<Subtitle>();
    final intro = args[2]?.$value as Intro?;
    final outro = args[3]?.$value as Outro?;
    final extra = (args[4]?.$reified as Map?)?.cast<String, dynamic>();
    final headers = args[5]?.$value as Headers?;
    return $Video.wrap(Video(
      sources: sources,
      subtitles: subtitles,
      intro: intro,
      outro: outro,
      extra: extra,
      headers: headers,
    ));
  }

  @override
  List<Object?> get props => $value.props;

  @override
  bool? get stringify => $value.stringify;

  @override
  String toString() {
    return $value.toString();
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
        $type.spec!.library, 'VideoSource.hls', __$VideoSource$hls.call);
    runtime.registerBridgeFunc($type.spec!.library, 'VideoSource.fromJson',
        __$VideoSource$fromJson.call);
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
      ),
      'hls': BridgeConstructorDef(
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
        isFactory: true,
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
                false),
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
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
      case 'toJson':
        return __$toJson;
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
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as VideoSource;
    final $result = $this.toJson();
    return runtime.wrap($result, recursive: true);
  }

  static const __$VideoSource$hls = $Function(_$VideoSource$hls);
  static $Value? _$VideoSource$hls(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$value as String? ?? '';
    final title = args[1]?.$value as String?;
    final isBackup = args[2]?.$value as bool? ?? false;
    return $VideoSource.wrap(VideoSource.hls(
      url: url,
      title: title,
      isBackup: isBackup,
    ));
  }

  static const __$VideoSource$fromJson = $Function(_$VideoSource$fromJson);
  static $Value? _$VideoSource$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    final $result = VideoSource.fromJson(json);
    return $VideoSource.wrap($result);
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

  @override
  List<Object?> get props => $value.props;

  @override
  bool? get stringify => $value.stringify;

  @override
  String toString() {
    return $value.toString();
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
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Subtitle.fromJson', __$Subtitle$fromJson.call);
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
                false),
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
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
      case 'toJson':
        return __$toJson;
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
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Subtitle;
    final $result = $this.toJson();
    return runtime.wrap($result, recursive: true);
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

  static const __$Subtitle$fromJson = $Function(_$Subtitle$fromJson);
  static $Value? _$Subtitle$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    final $result = Subtitle.fromJson(json);
    return $Subtitle.wrap($result);
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

  @override
  List<Object?> get props => $value.props;

  @override
  bool? get stringify => $value.stringify;

  @override
  String toString() {
    return $value.toString();
  }
}

/// dart_eval bimodal wrapper for [Intro]
class $Intro implements Intro, $Instance {
  /// Configure the [$Intro] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'Intro.', __$Intro$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Intro.fromJson', __$Intro$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.intro);

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
                'start',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
                    nullable: false),
                false),
            BridgeParameter(
                'end',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
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
      'start': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
              nullable: false),
          isStatic: false),
      'end': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
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
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Intro] in an [$Intro]
  $Intro.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'start':
        return $Duration.wrap($value.start);
      case 'end':
        return $Duration.wrap($value.end);

      case 'toJson':
        return __$toJson;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Intro get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Intro $value;

  @override
  Duration get start => $value.start;
  @override
  Duration get end => $value.end;

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Intro;
    final $result = $this.toJson();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }));
  }

  static const __$Intro$new = $Function(_$Intro$new);
  static $Value? _$Intro$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final start = args[0]?.$reified as Duration;
    final end = args[1]?.$reified as Duration;
    return $Intro.wrap(Intro(
      start: start,
      end: end,
    ));
  }

  static const __$Intro$fromJson = $Function(_$Intro$fromJson);
  static $Value? _$Intro$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $Intro.wrap(Intro.fromJson(
      json,
    ));
  }
}

/// dart_eval bimodal wrapper for [Outro]
class $Outro implements Outro, $Instance {
  /// Configure the [$Outro] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'Outro.', __$Outro$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Outro.fromJson', __$Outro$fromJson.call,
        isBridge: false);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.outro);

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
                'start',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
                    nullable: false),
                false),
            BridgeParameter(
                'end',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
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
      'start': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
              nullable: false),
          isStatic: false),
      'end': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
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
                BridgeTypeRef(ExtensionLibTypes.outro, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'start',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'end',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
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

  /// Wrap an [Outro] in an [$Outro]
  $Outro.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'start':
        return $Duration.wrap($value.start);
      case 'end':
        return $Duration.wrap($value.end);

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
  Outro get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Outro $value;

  @override
  Duration get start => $value.start;
  @override
  Duration get end => $value.end;

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Outro;
    final $result = $this.toJson();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }));
  }

  @override
  Outro copyWith({Duration? start, Duration? end}) => $value.copyWith(
        start: start,
        end: end,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Outro;
    final start = args[0]?.$reified as Duration?;
    final end = args[1]?.$reified as Duration?;
    final $result = $this.copyWith(
      start: start,
      end: end,
    );
    return $Outro.wrap($result);
  }

  static const __$Outro$new = $Function(_$Outro$new);
  static $Value? _$Outro$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final start = args[0]?.$reified as Duration;
    final end = args[1]?.$reified as Duration;
    return $Outro.wrap(Outro(
      start: start,
      end: end,
    ));
  }

  static const __$Outro$fromJson = $Function(_$Outro$fromJson);
  static $Value? _$Outro$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $Outro.wrap(Outro.fromJson(
      json,
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
        $type.spec!.library, 'ContentDataType', $ContentDataType.$values);
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
    runtime.registerBridgeEnumValues(
        $type.spec!.library, 'VideoFormat', $VideoFormat.$values);
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
        $type.spec!.library, 'SubtitleFormat', $SubtitleFormat.$values);
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
