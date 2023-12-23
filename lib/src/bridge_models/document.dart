import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/element.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:meiyou_extensions_lib/src/models/document.dart';
import 'package:meiyou_extensions_lib/src/models/element.dart';
import 'package:ok_http_dart/dom.dart';
import 'package:dart_eval/stdlib/core.dart';

class $DocumentObject implements DocumentObject, $Instance {
  $DocumentObject.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'DocumentObject.', $new);
  }

  late final $Instance _superclass = $Object($value);

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'DocumentObject'));

  static const $methods = {
    'select': BridgeMethodDef(BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [$ElementObject.$type])),
      params: [
        BridgeParameter('selector',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
      ],
    )),
    'selectFirst': BridgeMethodDef(BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
        $ElementObject.$type,
      ),
      params: [
        BridgeParameter('selector',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
      ],
    )),
    'trySelectFirst': BridgeMethodDef(
      BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type, nullable: true),
          params: [
            BridgeParameter('selector',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false)
          ]),
      isStatic: false,
    ),
  };

  static const $constructors = {
    '': BridgeConstructorDef(
      BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
                'document', BridgeTypeAnnotation($Document.$type), false),
          ]),
    )
  };
  static const $fields = {
    'document': BridgeFieldDef(
      BridgeTypeAnnotation($Document.$type),
    ),
  };

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: $constructors,
      fields: $fields,
      methods: $methods,
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'select':
        return const $Function(_select);
      case 'selectFirst':
        return const $Function(_selectFirst);
      case 'trySelectFirst':
        return const $Function(_trySelectFirst);
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  static $List _select(Runtime runtime, $Value? target, List<$Value?> args) {
    return $List.wrap((target?.$value as DocumentObject)
        .select(args[0]?.$value)
        .mapAsList((it) => $ElementObject.wrap(it)));
  }

  static $ElementObject? _selectFirst(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value =
        (target?.$value as DocumentObject).selectFirst(args[0]?.$value);

    return $ElementObject.wrap(value);
  }

  static $Value _trySelectFirst(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    final value =
        (target!.$value as DocumentObject).trySelectFirst(args[0]?.$value);

    return value == null ? $ElementObject.wrap(value!) : const $null();
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) =>
      _superclass.$setProperty(runtime, identifier, value);

  @override
  final DocumentObject $value;

  static $Value? $new(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $DocumentObject.wrap(DocumentObject(args[0]?.$value));
  }

  @override
  List<ElementObject> select(String selector) => $value.select(selector);

  @override
  ElementObject selectFirst(String selector) => $value.selectFirst(selector);

  @override
  ElementObject? trySelectFirst(String selector) =>
      $value.trySelectFirst(selector);
}

class $Document implements $Instance {
  $Document.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'Document'));

  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type)))
    },
    wrap: true,
  );

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) =>
      _superclass.$setProperty(runtime, identifier, value);

  @override
  final Document $value;
}
