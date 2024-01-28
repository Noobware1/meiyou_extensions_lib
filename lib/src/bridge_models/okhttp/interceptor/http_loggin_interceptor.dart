import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/date_fromatter.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/interceptor/interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:okhttp/interceptor.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [Logger]
class $Logger implements Logger, $Instance {
  /// Configure the [$Logger] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Logger.', __$Logger$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.logger);

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
                'color',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.color, []),
                    nullable: false),
                true),
            BridgeParameter(
                'format',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.dateFromat, []),
                    nullable: false),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'format': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.dateFromat, []),
              nullable: false),
          isStatic: false),
      'color': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.color, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'log': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'obj',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object, []),
                      nullable: true),
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

  /// Wrap an [Logger] in an [$Logger]
  $Logger.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'format':
        return $DateFromat.wrap($value.format);
      case 'color':
        return $Color.wrap($value.color);

      case 'log':
        return __$log;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Logger get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Logger $value;

  @override
  DateFromat get format => $value.format;
  @override
  Color get color => $value.color;

  @override
  void log(Object? obj) => $value.log(
        obj,
      );
  static const __$log = $Function(_$log);
  static $Value? _$log(Runtime runtime, $Value? target, List<$Value?> args) {
    final logger = target?.$value as Logger;
    final obj = args[0]?.$reified as Object;
    logger.log(
      obj,
    );
    return null;
  }

  static const __$Logger$new = $Function(_$Logger$new);
  static $Value? _$Logger$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final color = args[0]?.$value ?? Color.green;
    final format = args[1]?.$value ?? const DateFromat('yyyy-MM-dd HH:mm:ss a');
    return $Logger.wrap(Logger(color: color, format: format));
  }
}

/// dart_eval bimodal wrapper for [LoggingInterceptor]
class $LoggingInterceptor implements LoggingInterceptor, $Instance {
  /// Configure the [$LoggingInterceptor] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'LoggingInterceptor.',
        __$LoggingInterceptor$new.call);
  }

  late final $Instance _superclass = $Interceptor.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.loggingInterceptor);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [
        BridgeTypeRef(OkHttpTypes.interceptor, []),
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
                'logger',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.logger, []),
                    nullable: false),
                true),
            BridgeParameter(
                'level',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.logLevel, []),
                    nullable: false),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'level': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.logLevel, []),
              nullable: false),
          isStatic: false),
      'logger': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.logger, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'logHeader': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'headers',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'i',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'bodyHasUnknownEncoding': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'headers',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'bodyIsStreaming': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'response',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.response, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'intercept': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.future, [
                  BridgeTypeRef(OkHttpTypes.response, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'chain',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.chain, []),
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

  /// Wrap an [LoggingInterceptor] in an [$LoggingInterceptor]
  $LoggingInterceptor.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'level':
        return $LogLevel.wrap($value.level);
      case 'logger':
        return $Logger.wrap($value.logger);
      case 'logHeader':
        return __$logHeader;
      case 'bodyHasUnknownEncoding':
        return __$bodyHasUnknownEncoding;
      case 'bodyIsStreaming':
        return __$bodyIsStreaming;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  LoggingInterceptor get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final LoggingInterceptor $value;

  @override
  LogLevel get level => $value.level;
  @override
  Logger get logger => $value.logger;

  @override
  void logHeader(Headers headers, int i) => $value.logHeader(
        headers,
        i,
      );
  static const __$logHeader = $Function(_$logHeader);
  static $Value? _$logHeader(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as LoggingInterceptor;
    final headers = args[0]?.$reified as Headers;
    final i = args[1]?.$reified as int;
    obj.logHeader(
      headers,
      i,
    );
    return null;
  }

  @override
  bool bodyHasUnknownEncoding(Headers headers) => $value.bodyHasUnknownEncoding(
        headers,
      );
  static const __$bodyHasUnknownEncoding = $Function(_$bodyHasUnknownEncoding);
  static $Value? _$bodyHasUnknownEncoding(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as LoggingInterceptor;
    final headers = args[0]?.$reified as Headers;
    final $result = obj.bodyHasUnknownEncoding(
      headers,
    );
    return $bool($result);
  }

  @override
  bool bodyIsStreaming(Response response) => $value.bodyIsStreaming(
        response,
      );
  static const __$bodyIsStreaming = $Function(_$bodyIsStreaming);
  static $Value? _$bodyIsStreaming(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as LoggingInterceptor;
    final response = args[0]?.$reified as Response;
    final $result = obj.bodyIsStreaming(
      response,
    );
    return $bool($result);
  }

  @override
  Future<Response> intercept(Chain chain) => $value.intercept(
        chain,
      );

  static const __$LoggingInterceptor$new = $Function(_$LoggingInterceptor$new);
  static $Value? _$LoggingInterceptor$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final logger = args[0]?.$value ?? const Logger();
    final level = args[1]?.$value ?? LogLevel.BASIC;
    return $LoggingInterceptor.wrap(LoggingInterceptor(
      logger: logger,
      level: level,
    ));
  }

  @override
  set logger(Logger logger) {
    this.logger = logger;
  }
}

class $Color implements $Instance {
  $Color.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        $type.spec!.library, 'Color', $Color.$values);
  }

  static const $type = BridgeTypeRef(OkHttpTypes.color);

  static const $declaration = BridgeEnumDef($type, values: [
    'black',
    'red',
    'green',
    'yellow',
    'blue',
    'magenta',
    'cyan',
    'white',
    'reset'
  ], methods: {}, getters: {}, setters: {}, fields: {});

  static final $values = {
    'black': $Color.wrap(Color.black),
    'red': $Color.wrap(Color.red),
    'green': $Color.wrap(Color.green),
    'yellow': $Color.wrap(Color.yellow),
    'blue': $Color.wrap(Color.blue),
    'magenta': $Color.wrap(Color.magenta),
    'cyan': $Color.wrap(Color.cyan),
    'white': $Color.wrap(Color.white),
    'reset': $Color.wrap(Color.reset),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Color get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final Color $value;

  @override
  String toString() {
    return $value.toString();
  }
}

class $LogLevel implements $Instance {
  $LogLevel.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        $type.spec!.library, 'LogLevel', $LogLevel.$values);
  }

  static const $type = BridgeTypeRef(OkHttpTypes.logLevel);

  static const $declaration = BridgeEnumDef($type,
      values: ['BASIC', 'HEADERS', 'BODY', 'NONE'],
      methods: {},
      getters: {},
      setters: {},
      fields: {});

  static final $values = {
    'BASIC': $LogLevel.wrap(LogLevel.BASIC),
    'HEADERS': $LogLevel.wrap(LogLevel.HEADERS),
    'BODY': $LogLevel.wrap(LogLevel.BODY),
    'NONE': $LogLevel.wrap(LogLevel.NONE),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  LogLevel get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final LogLevel $value;

  @override
  String toString() {
    return $value.toString();
  }
}
