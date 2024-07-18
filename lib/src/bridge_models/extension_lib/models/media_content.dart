import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';

import 'package:meiyou_extensions_lib/src/models/media_content.dart';

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

  /// Wrap an [MediaContent] in an [$MediaContent]
  $MediaContent.wrap(this.$value);

  static $Value wrapByType(MediaContent mediaContent) {
    if (mediaContent is Movie) {
      return $Movie.wrap(mediaContent);
    } else if (mediaContent is TvSeries) {
      return $TvSeries.wrap(mediaContent);
    } else if (mediaContent is Anime) {
      return $Anime.wrap(mediaContent);
    }

    throw UnimplementedError('Unknown type: $mediaContent');
  }

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'toJson':
        return __$toJson;
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
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as MediaContent;
    final $result = $this.toJson();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }));
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
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Movie.id*g', __$static$id.call,
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
      'id': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: true),
      'playUrl': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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

  static const __$static$id = $Function(_$static$id);
  static $Value? _$static$id(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = Movie.id;
    return $int($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Movie;
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
    runtime.registerBridgeFunc(
        $type.spec!.library, 'TvSeries.id*g', __$static$id.call,
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
                      BridgeTypeRef(ExtensionLibTypes.season, []),
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
      'id': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: true),
      'seasons': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.season, []),
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
          return $Season.wrap($value.seasons[index]);
        }));

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
  List<Season> get seasons => $value.seasons;

  static const __$static$id = $Function(_$static$id);
  static $Value? _$static$id(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = TvSeries.id;
    return $int($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as TvSeries;
    final $result = $this.toJson();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }));
  }

  static const __$TvSeries$new = $Function(_$TvSeries$new);
  static $Value? _$TvSeries$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final seasons = (args[0]?.$reified as List).cast<Season>();
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

  @override
  String toString() {
    return $value.toString();
  }
}

/// dart_eval bimodal wrapper for [Anime]
class $Anime implements Anime, $Instance {
  /// Configure the [$Anime] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'Anime.', __$Anime$new.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Anime.fromJson', __$Anime$fromJson.call,
        isBridge: false);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Anime.id*g', __$static$id.call,
        isBridge: false);
  }

  late final $Instance _superclass = $MediaContent.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.anime);

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
      'id': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: true),
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
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Anime] in an [$Anime]
  $Anime.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'episodes':
        return $List.wrap(List.generate($value.episodes.length, (index) {
          return $Episode.wrap($value.episodes[index]);
        }));

      case 'toJson':
        return __$toJson;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Anime get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Anime $value;

  @override
  List<Episode> get episodes => $value.episodes;

  static const __$static$id = $Function(_$static$id);
  static $Value? _$static$id(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = Anime.id;
    return $int($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Anime;
    final $result = $this.toJson();
    return $Map.wrap($result.map((key, value) {
      return $MapEntry.wrap(MapEntry(
        key is $Value ? key : $String(key),
        value is $Value ? value : value,
      ));
    }));
  }

  static const __$Anime$new = $Function(_$Anime$new);
  static $Value? _$Anime$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final episodes = (args[0]?.$reified as List).cast<Episode>();
    return $Anime.wrap(Anime(
      episodes: episodes,
    ));
  }

  static const __$Anime$fromJson = $Function(_$Anime$fromJson);
  static $Value? _$Anime$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    return $Anime.wrap(Anime.fromJson(
      json,
    ));
  }

  @override
  String toString() {
    return $value.toString();
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
      'number': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: true),
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
      case 'episodes':
        return $List.wrap(List.generate($value.episodes.length, (index) {
          return $Episode.wrap($value.episodes[index]);
        }));

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
  List<Episode> get episodes => $value.episodes;

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Season;
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
    final $this = target?.$value as Season;
    final $result = $this.toString();
    return $String($result);
  }

  @override
  Season copyWith({int? number, List<Episode>? episodes}) => $value.copyWith(
        number: number,
        episodes: episodes,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Season;
    final number = args[0]?.$value as int?;
    final episodes = (args[1]?.$reified as List?)?.cast<Episode>();
    final $result = $this.copyWith(
      number: number,
      episodes: episodes,
    );
    return $Season.wrap($result);
  }

  static const __$Season$new = $Function(_$Season$new);
  static $Value? _$Season$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final number = args[0]?.$value as int?;
    final episodes = (args[1]?.$reified as List).cast<Episode>();
    return $Season.wrap(Season(
      number: number,
      episodes: episodes,
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
  Episode copyWith(
          {String? data,
          String? name,
          int? number,
          String? image,
          bool? isFiller,
          String? description}) =>
      $value.copyWith(
        data: data,
        name: name,
        number: number,
        image: image,
        isFiller: isFiller,
        description: description,
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
    final $result = $this.copyWith(
      data: data,
      name: name,
      number: number,
      image: image,
      isFiller: isFiller,
      description: description,
    );
    return $Episode.wrap($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as Episode;
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
    return $Episode.wrap(Episode(
      number: number,
      name: name,
      data: data,
      image: image,
      isFiller: isFiller,
      description: description,
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
