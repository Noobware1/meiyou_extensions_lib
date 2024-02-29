import 'dart:async';

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/headers.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/media_type.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/okhttp/plugin.dart';
import 'package:okhttp/okhttp.dart';

import 'package:okhttp/request.dart';

import 'request_body.dart';

/// dart_eval bimodal wrapper for [MultipartBody]
class $MultipartBody implements MultipartBody, $Instance {
  /// Configure the [$MultipartBody] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'MultipartBody.Builder',
        __$static$method$Builder.call);
  }

  late final $Instance _superclass = $RequestBody.wrap($value);

  static const $type = BridgeTypeRef(OkHttpTypes.multipartBody);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $extends: BridgeTypeRef(OkHttpTypes.requestBody, []),
      $implements: [],
      isAbstract: false,
    ),
    constructors: {},
    fields: {
      'boundary': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'parts': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(OkHttpTypes.part, []),
              ]),
              nullable: false),
          isStatic: false),
      'length': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'Builder': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.multipartBodyBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'boundary',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: true),
      'part': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.part, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'index',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'writeTo': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'sink',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(AsyncTypes.streamSink, [
                        BridgeTypeRef(CoreTypes.list, [
                          BridgeTypeRef(CoreTypes.int, []),
                        ]),
                      ]),
                      nullable: false),
                  false)
            ],
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
      'writeOrCountBytes': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'sink',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(AsyncTypes.streamSink, [
                        BridgeTypeRef(CoreTypes.list, [
                          BridgeTypeRef(CoreTypes.int, []),
                        ]),
                      ]),
                      nullable: true),
                  false),
              BridgeParameter(
                  'countBytes',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'boundaryByteString': BridgeMethodDef(
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
      'contentLength': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'contentType': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.mediaType, []),
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

  /// Wrap an [MultipartBody] in an [$MultipartBody]
  $MultipartBody.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'boundary':
        return $String($value.boundary);
      case 'parts':
        return $List.wrap(List.generate($value.parts.length, (index) {
          return $Part.wrap($value.parts[index]);
        }));
      case 'length':
        return $int($value.length);
      case 'boundaryByteString':
        return $List
            .wrap(List.generate($value.boundaryByteString.length, (index) {
          return $int($value.boundaryByteString[index]);
        }));
      case 'contentLength':
        return $int($value.contentLength);
      case 'contentType':
        return $MediaType.wrap($value.contentType);
      case 'part':
        return __$part;
      case 'writeTo':
        return __$writeTo;
      case 'toString':
        return __$toString;
      case 'writeOrCountBytes':
        return __$writeOrCountBytes;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  MultipartBody get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final MultipartBody $value;

  @override
  String get boundary => $value.boundary;
  @override
  List<Part> get parts => $value.parts;
  @override
  int get length => $value.length;

  @override
  List<int> get boundaryByteString => $value.boundaryByteString;

  @override
  int get contentLength => $value.contentLength;

  @override
  MediaType get contentType => $value.contentType;

  @override
  Part part(int index) => $value.part(
        index,
      );
  static const __$part = $Function(_$part);
  static $Value? _$part(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as MultipartBody;
    final index = args[0]?.$value as int;
    final $result = obj.part(
      index,
    );
    return $Part.wrap($result);
  }

  @override
  void writeTo(StreamSink<List<int>> sink) => $value.writeTo(
        sink,
      );
  static const __$writeTo = $Function(_$writeTo);
  static $Value? _$writeTo(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as MultipartBody;
    final sink = args[0]?.$value as StreamSink<List<int>>;
    obj.writeTo(sink);
    return null;
  }

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as MultipartBody;
    final $result = obj.toString();
    return $String($result);
  }

  @override
  int writeOrCountBytes(StreamSink<List<int>>? sink, bool countBytes) =>
      $value.writeOrCountBytes(
        sink,
        countBytes,
      );
  static const __$writeOrCountBytes = $Function(_$writeOrCountBytes);
  static $Value? _$writeOrCountBytes(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as MultipartBody;
    final sink = args[0]?.$reified as StreamSink<List<int>>;
    final countBytes = args[1]?.$value as bool;
    final $result = obj.writeOrCountBytes(
      sink,
      countBytes,
    );
    return $int($result);
  }

  static const __$static$method$Builder = $Function(_$static$method$Builder);
  static $Value? _$static$method$Builder(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final boundary = args[0]?.$value as String?;
    final $result = MultipartBody.Builder(boundary);
    return $MultipartBodyBuilder.wrap($result);
  }
}

/// dart_eval bimodal wrapper for [Part]
class $Part implements Part, $Instance {
  /// Configure the [$Part] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc($type.spec!.library, 'Part.', __$Part$new.call);
    runtime.registerBridgeFunc($type.spec!.library, 'Part.createFormData',
        __$Part$createFormData.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.part);

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
          params: [
            BridgeParameter(
                'headers',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                    nullable: true),
                false),
            BridgeParameter(
                'body',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.requestBody, []),
                    nullable: false),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      ),
      'createFormData': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'body',
                BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.requestBody, []),
                    nullable: false),
                false)
          ],
          namedParams: [
            BridgeParameter(
                'filename',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: true,
      )
    },
    fields: {
      'headers': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
              nullable: true),
          isStatic: false),
      'body': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.requestBody, []),
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
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Part] in an [$Part]
  $Part.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'headers':
        return $value.headers == null
            ? $null()
            : $Headers.wrap($value.headers!);
      case 'body':
        return $RequestBody.wrap($value.body);

      case 'toString':
        return __$toString;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Part get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Part $value;

  @override
  Headers? get headers => $value.headers;
  @override
  RequestBody get body => $value.body;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Part;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$Part$new = $Function(_$Part$new);
  static $Value? _$Part$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final headers = args[0]?.$reified as Headers;
    final body = args[1]?.$reified as RequestBody;
    return $Part.wrap(Part(
      headers,
      body,
    ));
  }

  static const __$Part$createFormData = $Function(_$Part$createFormData);
  static $Value? _$Part$createFormData(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final body = args[1]?.$reified as RequestBody;
    final filename = args[2]?.$value as String;
    return $Part.wrap(Part.createFormData(
      name,
      body,
      filename: filename,
    ));
  }
}

/// dart_eval bimodal wrapper for [MultipartBodyBuilder]
class $MultipartBodyBuilder implements $Instance {
  /// Configure the [$MultipartBodyBuilder] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(OkHttpTypes.multipartBodyBuilder);

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
          params: [
            BridgeParameter(
                'boundary',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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
      'setType': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.multipartBodyBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'type',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.mediaType, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addPart': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.multipartBodyBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'body',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(OkHttpTypes.requestBody, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'headers',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.headers, []),
                      nullable: true),
                  true)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'addFormDataPart': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.multipartBodyBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false),
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [
              BridgeParameter(
                  'filename',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: false),
      'addToPart': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.multipartBodyBuilder, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'part',
                  BridgeTypeAnnotation(BridgeTypeRef(OkHttpTypes.part, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'build': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(OkHttpTypes.multipartBody, []),
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

  /// Wrap an [MultipartBodyBuilder] in an [$MultipartBodyBuilder]
  $MultipartBodyBuilder.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'setType':
        return __$setType;
      case 'addPart':
        return __$addPart;
      case 'addFormDataPart':
        return __$addFormDataPart;
      case 'addToPart':
        return __$addToPart;
      case 'build':
        return __$build;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  MultipartBodyBuilder get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final MultipartBodyBuilder $value;

  static const __$setType = $Function(_$setType);
  static $Value? _$setType(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as MultipartBodyBuilder;
    final type = args[0]?.$reified as MediaType;
    final $result = obj.setType(type);
    return $MultipartBodyBuilder.wrap($result);
  }

  static const __$addPart = $Function(_$addPart);
  static $Value? _$addPart(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as MultipartBodyBuilder;
    final body = args[0]?.$value as RequestBody;
    final headers = args[1]?.$value as Headers?;
    final $result = obj.addPart(body, headers);
    return $MultipartBodyBuilder.wrap($result);
  }

  static const __$addFormDataPart = $Function(_$addFormDataPart);
  static $Value? _$addFormDataPart(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as MultipartBodyBuilder;
    final name = args[0]?.$value as String;
    final value = args[1]?.$value as String;
    final filename = args[2]?.$value as String?;
    final $result = obj.addFormDataPart(name, value, filename: filename);
    return $MultipartBodyBuilder.wrap($result);
  }

  static const __$addToPart = $Function(_$addToPart);
  static $Value? _$addToPart(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as MultipartBodyBuilder;
    final part = args[0]?.$value as Part;
    final $result = obj.addToPart(part);
    return $MultipartBodyBuilder.wrap($result);
  }

  static const __$build = $Function(_$build);
  static $Value? _$build(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as MultipartBodyBuilder;
    final $result = obj.build();
    return $MultipartBody.wrap($result);
  }
}
