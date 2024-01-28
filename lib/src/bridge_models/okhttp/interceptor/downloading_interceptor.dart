import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:dart_eval/stdlib/async.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/interceptor/interceptor.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/response/response_body.dart';
import 'package:okhttp/interceptor.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/response.dart';

/// dart_eval bimodal wrapper for [DownloadingInterceptor]
class $DownloadingInterceptor implements DownloadingInterceptor, $Instance {
  /// Configure the [$DownloadingInterceptor] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'DownloadingInterceptor.',
        __$DownloadingInterceptor$new.call);
  }

  late final $Instance _superclass = $Interceptor.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.downloadingInterceptor);

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
                'onProgress',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
                    nullable: false),
                true),
            BridgeParameter(
                'savePath',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'timeout',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
                    nullable: true),
                true),
            BridgeParameter(
                'deleteOnError',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'onProgress': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.function, []),
              nullable: false),
          isStatic: false),
      'savePath': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'timeout': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
              nullable: false),
          isStatic: false),
      'deleteOnError': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
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

  /// Wrap an [DownloadingInterceptor] in an [$DownloadingInterceptor]
  $DownloadingInterceptor.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'onProgress':
        return $Closure((runtime, target, args) =>
            $value.onProgress!(args[0]?.$value, args[1]?.$value));
      case 'savePath':
        return $String($value.savePath);
      case 'timeout':
        return $value.timeout == null
            ? $null()
            : $Duration.wrap($value.timeout!);
      case 'deleteOnError':
        return $bool($value.deleteOnError);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  DownloadingInterceptor get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final DownloadingInterceptor $value;

  @override
  Function(int, int)? get onProgress => $value.onProgress;
  @override
  String get savePath => $value.savePath;
  @override
  Duration? get timeout => $value.timeout;
  @override
  bool get deleteOnError => $value.deleteOnError;

  @override
  Future<Response> intercept(Chain chain) => $value.intercept(chain);

  static const __$DownloadingInterceptor$new =
      $Function(_$DownloadingInterceptor$new);
  static $Value? _$DownloadingInterceptor$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final onProgress = args[0]?.$value;
    final savePath = args[1]?.$value;
    final timeout = args[2]?.$value;
    final deleteOnError = args[3]?.$value ?? true;
    return $DownloadingInterceptor.wrap(DownloadingInterceptor(
      onProgress: onProgress,
      savePath: savePath,
      timeout: timeout,
      deleteOnError: deleteOnError,
    ));
  }
}

/// dart_eval bimodal wrapper for [DownloadedBody]
class $DownloadedBody implements DownloadedBody, $Instance {
  /// Configure the [$DownloadedBody] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'DownloadedBody.', __$DownloadedBody$new.call);
  }

  late final $Instance _superclass = $ResponseBody.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.downloadedBody);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: null,
      $implements: [
        BridgeTypeRef(OkHttpTypes.responseBody, []),
      ],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'contentLength',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: false),
                false),
            BridgeParameter(
                'contentType',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
                    nullable: true),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      )
    },
    fields: {
      'contentLength': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
      'contentType': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
              nullable: false),
          isStatic: false),
    },
    methods: {},
    getters: {
      'bytes': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(CoreTypes.int, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'charStream': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.stream, [
                  BridgeTypeRef(CoreTypes.string, []),
                ]),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'string': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [DownloadedBody] in an [$DownloadedBody]
  $DownloadedBody.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'contentLength':
        return $int($value.contentLength);
      case 'contentType':
        return $value.contentType == null
            ? $null()
            : $MediaType.wrap($value.contentType!);
      case 'bytes':
        return $List.wrap(List.generate(($value.bytes).length, (index) {
          return $int($value.bytes[index]);
        }));
      case 'charStream':
        return $Stream.wrap($value.charStream);
      case 'string':
        return $String($value.string);

      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  DownloadedBody get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final DownloadedBody $value;

  @override
  int get contentLength => $value.contentLength;
  @override
  MediaType? get contentType => $value.contentType;

  @override
  List<int> get bytes => $value.bytes;

  @override
  Stream<String> get charStream => $value.charStream;

  @override
  String get string => $value.string;

  static const __$DownloadedBody$new = $Function(_$DownloadedBody$new);
  static $Value? _$DownloadedBody$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final contentLength = args[0]?.$value;
    final contentType = args[1]?.$value;
    return $DownloadedBody.wrap(DownloadedBody(contentLength, contentType));
  }
}
