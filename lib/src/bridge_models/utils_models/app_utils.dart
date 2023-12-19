import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/document.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/element.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/media/video/subtitle_format.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/ok_http_response.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:meiyou_extensions_lib/src/models/element.dart';
import 'package:meiyou_extensions_lib/src/models/utils_models/app_utils.dart';
import 'package:meiyou_extensions_lib/src/utils/unwrap.dart';

class $AppUtils extends AppUtils with $Bridge<AppUtils> {
  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'AppUtils'));

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type), namedParams: [], params: []))
      },
      methods: {
        'httpRequest': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(
                    CoreTypes.future, [$OkHttpResponseObject.$type])),
                namedParams: [
                  BridgeParameter(
                      'url',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      false),
                  BridgeParameter(
                      'method',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      false),
                  BridgeParameter(
                      'headers',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map),
                          nullable: true),
                      true),
                  BridgeParameter(
                      'followRedircts',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool),
                          nullable: true),
                      true),
                  BridgeParameter(
                      'cookie',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                          nullable: true),
                      true),
                  BridgeParameter(
                      'referer',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                          nullable: true),
                      true),
                  BridgeParameter(
                      'params',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map),
                          nullable: true),
                      true),
                  BridgeParameter(
                      'body',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.object),
                          nullable: true),
                      true),
                  BridgeParameter(
                      'verify',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool),
                          nullable: true),
                      true),
                  BridgeParameter(
                      'retry',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool),
                          nullable: true),
                      true),
                ]),
            isStatic: true),
        'encode': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                params: [
                  BridgeParameter(
                      'query',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      false),
                  BridgeParameter(
                      'replaceWith',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      true),
                ],
                namedParams: []),
            isStatic: true),
        'toDateTime': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime)),
              params: [
                BridgeParameter('year',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)), false),
              ],
              namedParams: [
                BridgeParameter(
                    'month',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                        nullable: true),
                    true),
                BridgeParameter(
                    'day',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                        nullable: true),
                    true),
                BridgeParameter(
                    'hour',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                        nullable: true),
                    true),
                BridgeParameter(
                    'minute',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                        nullable: true),
                    true),
                BridgeParameter(
                    'second',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                        nullable: true),
                    true),
                BridgeParameter(
                    'millisecond',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                        nullable: true),
                    true),
                BridgeParameter(
                    'microsecond',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int),
                        nullable: true),
                    true),
              ],
            ),
            isStatic: true),
        'parseHtml': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation($DocumentObject.$type),
                params: [
                  BridgeParameter(
                      'html',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      false),
                ],
                namedParams: []),
            isStatic: true),
        'selectMultiAttr': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(
                    CoreTypes.list, [BridgeTypeRef(CoreTypes.string)])),
                params: [
                  BridgeParameter(
                      'elements',
                      BridgeTypeAnnotation(BridgeTypeRef(
                          CoreTypes.list, [$ElementObject.$type])),
                      false),
                  BridgeParameter(
                      'attr',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      false),
                ],
                namedParams: []),
            isStatic: true),
        'selectMultiText': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(
                    CoreTypes.list, [BridgeTypeRef(CoreTypes.string)])),
                params: [
                  BridgeParameter(
                      'elements',
                      BridgeTypeAnnotation(BridgeTypeRef(
                          CoreTypes.list, [$ElementObject.$type])),
                      false),
                ],
                namedParams: []),
            isStatic: true),
        'httpify': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                params: [
                  BridgeParameter(
                      'url',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      false),
                ],
                namedParams: []),
            isStatic: true),
        'getBackgroundImage': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                params: [
                  BridgeParameter(
                      'style',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      false),
                ],
                namedParams: []),
            isStatic: true),
        'getMonthByName': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int)),
                params: [
                  BridgeParameter(
                      'name',
                      BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                      false),
                ],
                namedParams: []),
            isStatic: true),
        'getSubtitleFormatFromUrl': BridgeMethodDef(
          BridgeFunctionDef(
              returns:
                  BridgeTypeAnnotation($SubtitleFormat.$type, nullable: true),
              params: [
                BridgeParameter(
                    'url',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false)
              ]),
          isStatic: true,
        ),
        'isNotNull': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
              params: [
                BridgeParameter(
                    'value',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                    false)
              ]),
          isStatic: true,
        ),
        'evalAndStatements': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
              params: [
                BridgeParameter('statements',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list)), false)
              ]),
          isStatic: true,
        ),
        'evalOrStatements': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool)),
              params: [
                BridgeParameter('statements',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list)), false)
              ]),
          isStatic: true,
        ),
        'trySync': BridgeMethodDef(
            BridgeFunctionDef(
                returns: BridgeTypeAnnotation(BridgeTypeRef.ref('T'),
                    nullable: true),
                params: [
                  BridgeParameter('fun',
                      BridgeTypeAnnotation(BridgeTypeRef.ref('T')), false),
                ],
                namedParams: [],
                generics: {
                  'T': BridgeGenericParam(),
                }),
            isStatic: true),
        'parseDuration': BridgeMethodDef(BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration)),
          params: [
            BridgeParameter('value',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
            BridgeParameter('format',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
          ],
          namedParams: [],
        )),
        'tryParseDuration': BridgeMethodDef(
            BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration),
                  nullable: true),
              params: [
                BridgeParameter(
                    'value',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false),
                BridgeParameter(
                    'format',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false),
              ],
              namedParams: [],
            ),
            isStatic: true),
      },
      fields: {},
      getters: {},
      setters: {},
      bridge: true);

  static $AppUtils $construct(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $AppUtils();
  }

  static $Future $httpRequest(
      Runtime runtime, $Value? target, List<$Value?> args) {
    Object? body = args[7]?.$value;

    if (body is Map) {
      body = unwrapMap<String, String>(body);
    } else if (body is List) {
      body = unwrapList<String>(body);
    }
    return $Future.wrap(
      AppUtils.httpRequest(
        url: args[0]?.$value,
        method: args[1]?.$value,
        headers: args[2]?.$value != null
            ? unwrapMap<String, String>(args[2]?.$value as Map)
            : null,
        followRedircts: args[3]?.$value,
        cookie: args[4]?.$value,
        referer: args[5]?.$value,
        params: args[6]?.$value != null
            ? unwrapMap<String, dynamic>(args[6]?.$value as Map)
            : null,
        body: body,
        verify: args[8]?.$value,
        retry: args[9]?.$value,
      ).then((value) => $OkHttpResponseObject.wrap(value)),
    );
  }

  static $String $encode(Runtime runtime, $Value? target, List<$Value?> args) {
    if (args[1]?.$value != null) {
      return $String(AppUtils.encode(args[0]?.$value, args[1]?.$value));
    }
    return $String(AppUtils.encode(args[0]?.$value));
  }

  static $String $getBackgroundImage(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(AppUtils.getBackgroundImage(args[0]!.$value));
  }

  static $DateTime $toDateTime(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $DateTime.wrap(AppUtils.toDateTime(
      args[0]?.$value,
      month: args[1]?.$value,
      day: args[2]?.$value,
      hour: args[3]?.$value,
      minute: args[4]?.$value,
      second: args[5]?.$value,
      millisecond: args[6]?.$value,
      microsecond: args[7]?.$value,
    ));
  }

  static $DocumentObject $parseHtml(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $DocumentObject.wrap(AppUtils.parseHtml(args[0]?.$value));
  }

  static $Value $selectMultiAttr(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $List.wrap(AppUtils.selectMultiAttr(args[0]?.$value, args[1]?.$value)
        .mapAsList((it) => $String(it)));
  }

  static $Value $selectMultiText(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $List.wrap(AppUtils.selectMultiText((args[0]?.$value as List)
            .mapAsList(
                (it) => (it is $Value ? it.$value : it) as ElementObject))
        .mapAsList((it) => $String(it)));
  }

  static $Value $httpify(Runtime runtime, $Value? target, List<$Value?> args) {
    return $String(AppUtils.httpify(args[0]?.$value));
  }

  static $Value $getMonthByName(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $int(AppUtils.getMonthByName(args[0]?.$value));
  }

  static $Value? $getSubtitleFormatFromUrl(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final $result =
        AppUtils.getSubtitleFormatFromUrl(args[0]?.$value as String);
    return $result == null ? const $null() : $SubtitleFormat.wrap($result);
  }

  static $Value? $isNotNull(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $bool(AppUtils.isNotNull(args[0]?.$value));
  }

  static $Value? $evalAndStatements(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $bool(AppUtils.evalAndStatements(unwrapList<bool>(args[0]!.$value)));
  }

  static $Value? $evalOrStatements(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $bool(AppUtils.evalOrStatements(unwrapList<bool>(args[0]!.$value)));
  }

  static $Value? $trySync(Runtime runtime, $Value? target, List<$Value?> args) {
    final fun = args[0] as EvalCallable;

    final result = AppUtils.trySync(() => fun.call(runtime, target, []));

    return result ?? const $null();
  }

  static $Value? $parseDuration(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = args[0]?.$value as String;
    final format = args[1]?.$value as String;

    return $Duration.wrap(AppUtils.parseDuration(value, format));
  }

  static $Value? $tryParseDuration(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = args[0]?.$value as String;
    final format = args[1]?.$value as String;
    final result = AppUtils.tryParseDuration(value, format);
    return result == null ? const $null() : $Duration.wrap(result);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'AppUtils.', $AppUtils.$construct,
        isBridge: true);

    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.httpRequest', $AppUtils.$httpRequest);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.encode', $AppUtils.$encode);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.toDateTime', $AppUtils.$toDateTime);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.parseHtml', $AppUtils.$parseHtml);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.selectMultiAttr', $AppUtils.$selectMultiAttr);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.selectMultiText', $AppUtils.$selectMultiText);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.httpify', $AppUtils.$httpify);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.getMonthByName', $AppUtils.$getMonthByName);
    runtime.registerBridgeFunc(bridgeLibary, 'AppUtils.getBackgroundImage',
        $AppUtils.$getBackgroundImage);

    runtime.registerBridgeFunc(
        bridgeLibary,
        'AppUtils.getSubtitleFormatFromUrl',
        $AppUtils.$getSubtitleFormatFromUrl);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.isNotNull', $AppUtils.$isNotNull);
    runtime.registerBridgeFunc(bridgeLibary, 'AppUtils.evalAndStatements',
        $AppUtils.$evalAndStatements);

    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.evalOrStatements', $AppUtils.$evalOrStatements);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.trySync', $AppUtils.$trySync);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.parseDuration', $AppUtils.$parseDuration);
    runtime.registerBridgeFunc(
        bridgeLibary, 'AppUtils.tryParseDuration', $AppUtils.$tryParseDuration);
  }

  @override
  $Value? $bridgeGet(String identifier) {
    throw UnimplementedError();
  }

  @override
  void $bridgeSet(String identifier, $Value value) {}
}
