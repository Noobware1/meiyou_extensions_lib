import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';

import 'package:meiyou_extensions_lib/src/models/content.dart';

/// dart_eval bimodal wrapper for [Content]
class $Content implements Content, $Instance {
  /// Configure the [$Content] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.content);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [],
      isAbstract: true,
    ),
    constructors: {},
    fields: {},
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Content] in an [$Content]
  $Content.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Content get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Content $value;
}

/// dart_eval bimodal wrapper for [LazyContent]
class $LazyContent implements LazyContent, $Instance {
  /// Configure the [$LazyContent] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'LazyContent.', __$LazyContent$new.call);
  }

  late final $Instance _superclass = $Content.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.lazyContent);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.content, []),
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [
            BridgeParameter(
                'load',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'load': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [LazyContent] in an [$LazyContent]
  $LazyContent.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'load':
        return $Function(_$load);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  LazyContent get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final LazyContent $value;

  static const __$LazyContent$new = $Function(_$LazyContent$new);
  static $Value? _$LazyContent$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final load = args[0] as EvalCallable;
    return $LazyContent.wrap(LazyContent(
      load: () => (load.call(runtime, null, [])?.$value as Future)
          .then((value) => value as Content),
    ));
  }

  @override
  String toString() {
    return $value.toString();
  }

  @override
  Future<Content> Function() get load => $value.load;

  $Value? _$load(Runtime runtime, $Value? target, List<$Value?> args) {
    final $result = load().then((value) {
      if (value is Movie) {
        return $Movie.wrap(value);
      } else if (value is Series) {
        return $Series.wrap(value);
      } else if (value is Anime) {
        return $Anime.wrap(value);
      } else {
        return $Content.wrap(value);
      }
    });
    return $Future.wrap($result);
  }
}

/// dart_eval bimodal wrapper for [Movie]
class $Movie implements Movie, $Instance {
  /// Configure the [$Movie] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Movie.', __$Movie$new.call);

    runtime.registerBridgeFunc(
        $type.spec!.library, 'Movie.lazy', __$static$method$lazy.call);
  }

  late final $Instance _superclass = $Content.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.movie);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.content, []),
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
                false),
            BridgeParameter(
                'image',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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
      )
    },
    fields: {
      'url': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'image': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'description': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
      'lazy': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.lazyContent, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'builder',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
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
                BridgeTypeRef(ExtensionLibTypes.movie, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'image',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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
      case 'url':
        return $String($value.url);
      case 'image':
        return $value.image == null ? $null() : $String($value.image!);
      case 'description':
        return $value.description == null
            ? $null()
            : $String($value.description!);

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
  String get url => $value.url;
  @override
  String? get image => $value.image;
  @override
  String? get description => $value.description;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Movie;
    final $result = obj.toString();
    return $String($result);
  }

  @override
  Movie copyWith({String? url, String? image, String? description}) =>
      $value.copyWith(
        url: url,
        image: image,
        description: description,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Movie;
    final url = args[0]?.$value as String?;
    final image = args[1]?.$value as String?;
    final description = args[2]?.$value as String?;
    final $result = obj.copyWith(
      url: url,
      image: image,
      description: description,
    );
    return $Movie.wrap($result);
  }

  static const __$static$method$lazy = $Function(_$static$method$lazy);
  static $Value? _$static$method$lazy(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final builder = args[0] as EvalCallable;
    final $result = Movie.lazy(
      () => (builder.call(runtime, null, [])?.$value as Future)
          .then((value) => value as Movie),
    );
    return $LazyContent.wrap($result);
  }

  static const __$Movie$new = $Function(_$Movie$new);
  static $Value? _$Movie$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final url = args[0]?.$value as String;
    final image = args[1]?.$value as String?;
    final description = args[2]?.$value as String?;
    return $Movie.wrap(Movie(
      url: url,
      image: image,
      description: description,
    ));
  }
}

/// dart_eval bimodal wrapper for [Series]
class $Series implements Series, $Instance {
  /// Configure the [$Series] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Series.', __$Series$new.call);

    runtime.registerBridgeFunc(
        $type.spec!.library, 'Series.lazy', __$static$method$lazy.call);
  }

  late final $Instance _superclass = $Content.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.series);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.content, []),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'data',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.seasonList, []),
                    ]),
                    nullable: false),
                false)
          ],
          namedParams: [],
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
      'lazy': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.lazyContent, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'builder',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
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
                BridgeTypeRef(ExtensionLibTypes.series, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'data',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.seasonList, []),
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

  /// Wrap an [Series] in an [$Series]
  $Series.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'data':
        return $List.wrap(List.generate($value.data.length, (index) {
          return $SeasonList.wrap($value.data[index]);
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
  Series get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Series $value;

  @override
  List<SeasonList> get data => $value.data;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Series;
    final $result = obj.toString();
    return $String($result);
  }

  @override
  Series copyWith({List<SeasonList>? data}) => $value.copyWith(
        data: data,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Series;
    final data = (args[0]?.$reified as List?)?.cast<SeasonList>();
    final $result = obj.copyWith(
      data: data,
    );
    return $Series.wrap($result);
  }

  static const __$static$method$lazy = $Function(_$static$method$lazy);
  static $Value? _$static$method$lazy(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final builder = args[0] as EvalCallable;
    final $result = Series.lazy(
      () => (builder.call(runtime, null, [])?.$value as Future)
          .then((value) => value as Series),
    );
    return $LazyContent.wrap($result);
  }

  static const __$Series$new = $Function(_$Series$new);
  static $Value? _$Series$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final data = (args[0]?.$reified as List).cast<SeasonList>();
    return $Series.wrap(Series(
      data,
    ));
  }
}

/// dart_eval bimodal wrapper for [Anime]
class $Anime implements Anime, $Instance {
  /// Configure the [$Anime] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Anime.', __$Anime$new.call);

    runtime.registerBridgeFunc(
        $type.spec!.library, 'Anime.lazy', __$static$method$lazy.call);
  }

  late final $Instance _superclass = $Content.wrap($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.anime);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(ExtensionLibTypes.content, []),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'episodes',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.episode, []),
                    ]),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
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
      'lazy': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.lazyContent, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'builder',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: true),
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
                BridgeTypeRef(ExtensionLibTypes.anime, []),
                nullable: false),
            params: [],
            namedParams: [
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

  /// Wrap an [Anime] in an [$Anime]
  $Anime.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'episodes':
        return $List.wrap(List.generate($value.episodes.length, (index) {
          return $Episode.wrap($value.episodes[index]);
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

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Anime;
    final $result = obj.toString();
    return $String($result);
  }

  @override
  Anime copyWith({List<Episode>? episodes}) => $value.copyWith(
        episodes: episodes,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Anime;
    final episodes = (args[0]?.$reified as List?)?.cast<Episode>();
    final $result = obj.copyWith(
      episodes: episodes,
    );
    return $Anime.wrap($result);
  }

  static const __$static$method$lazy = $Function(_$static$method$lazy);
  static $Value? _$static$method$lazy(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final builder = args[0] as EvalCallable;
    final $result = Anime.lazy(
      () => (builder.call(runtime, null, [])?.$value as Future)
          .then((value) => value as Anime),
    );
    return $LazyContent.wrap($result);
  }

  static const __$Anime$new = $Function(_$Anime$new);
  static $Value? _$Anime$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final episodes = (args[0]?.$reified as List).cast<Episode>();
    return $Anime.wrap(Anime(
      episodes,
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
        $type.spec!.library, 'SeasonList.', __$SeasonList$new.call);
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
                    BridgeTypeRef(CoreTypes.list,
                        [BridgeTypeRef(ExtensionLibTypes.episode)]),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
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
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SeasonList;
    final $result = obj.toString();
    return $String($result);
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
    final obj = target?.$value as SeasonList;
    final season = args[0]?.$reified as Season?;
    final episodes = (args[1]?.$reified as List?)?.cast<Episode>();
    final $result = obj.copyWith(
      season: season,
      episodes: episodes,
    );
    return $SeasonList.wrap($result);
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
}

/// dart_eval bimodal wrapper for [Season]
class $Season implements Season, $Instance {
  /// Configure the [$Season] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Season.', __$Season$new.call);
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
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, []),
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
      )
    },
    fields: {
      'number': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, []),
              nullable: true),
          isStatic: false),
      'name': BridgeFieldDef(
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
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.season, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'number',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, []),
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
        return $value.number == null ? $null() : $num($value.number!);
      case 'name':
        return $value.name == null ? $null() : $String($value.name!);
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
  num? get number => $value.number;
  @override
  String? get name => $value.name;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Season;
    final $result = obj.toString();
    return $String($result);
  }

  @override
  Season copyWith({num? number, String? name}) => $value.copyWith(
        number: number,
        name: name,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Season;
    final number = args[0]?.$value as num?;
    final name = args[1]?.$value as String?;
    final $result = obj.copyWith(
      number: number,
      name: name,
    );
    return $Season.wrap($result);
  }

  static const __$Season$new = $Function(_$Season$new);
  static $Value? _$Season$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final number = args[0]?.$value as num?;
    final name = args[1]?.$value as String?;
    return $Season.wrap(Season(
      number: number,
      name: name,
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
        $type.spec!.library, 'Episode.', __$Episode$new.call);
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
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, []),
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
        isFactory: false,
      )
    },
    fields: {
      'data': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'number': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, []),
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
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num, []),
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
      case 'data':
        return $String($value.data);
      case 'name':
        return $value.name == null ? $null() : $String($value.name!);
      case 'number':
        return $value.number == null ? $null() : $num($value.number!);
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
  String get data => $value.data;
  @override
  String? get name => $value.name;
  @override
  num? get number => $value.number;
  @override
  String? get image => $value.image;
  @override
  bool? get isFiller => $value.isFiller;
  @override
  String? get description => $value.description;
  @override
  DateTime? get date => $value.date;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Episode;
    final $result = obj.toString();
    return $String($result);
  }

  @override
  Episode copyWith(
          {String? data,
          String? name,
          num? number,
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
    final obj = target?.$value as Episode;
    final data = args[0]?.$value as String?;
    final name = args[1]?.$value as String?;
    final number = args[2]?.$value as num?;
    final image = args[3]?.$value as String?;
    final isFiller = args[4]?.$value as bool?;
    final description = args[5]?.$value as String?;
    final date = args[6]?.$reified as DateTime?;
    final $result = obj.copyWith(
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

  static const __$Episode$new = $Function(_$Episode$new);
  static $Value? _$Episode$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final number = args[0]?.$value as num?;
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
}
