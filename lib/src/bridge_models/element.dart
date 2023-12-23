import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:meiyou_extensions_lib/src/models/element.dart';
import 'package:ok_http_dart/dom.dart';

class $ElementObject implements ElementObject, $Instance {
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'ElementObject.', $new);
  }

  late final $Instance _superclass = $Object($value);

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'ElementObject'));

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation($type),
              namedParams: [],
              params: [
                BridgeParameter(
                    '_element', BridgeTypeAnnotation($Element.$type), false),
              ]),
        )
      },
      fields: {
        'element': BridgeFieldDef(BridgeTypeAnnotation($Element.$type)),
      },
      methods: {
        'attr': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: [
                BridgeParameter(
                    'attr',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false)
              ]),
          isStatic: false,
        ),
        'text': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: []),
          isStatic: false,
        ),
        'select': BridgeMethodDef(
          BridgeFunctionDef(
              returns:
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list, [$type])),
              params: [
                BridgeParameter(
                    'selector',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false)
              ]),
          isStatic: false,
        ),
        'selectFirst': BridgeMethodDef(
          BridgeFunctionDef(returns: BridgeTypeAnnotation($type), params: [
            BridgeParameter('selector',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false)
          ]),
          isStatic: false,
        ),
        'trySelectFirst': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation($type, nullable: true),
              params: [
                BridgeParameter(
                    'selector',
                    BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
                    false)
              ]),
          isStatic: false,
        ),
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'text':
        return const $Function(_text);
      case 'attr':
        return const $Function(_attr);
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

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) =>
      _superclass.$setProperty(runtime, identifier, value);

  $ElementObject.wrap(this.$value);

  @override
  final ElementObject $value;

  static $Value? $new(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $ElementObject.wrap(ElementObject(args[0]?.$value));
  }

  static $Value? _attr(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $String((target!.$value as ElementObject).attr(args[0]?.$value));
  }

  static $Value? _text(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $String((target?.$value as ElementObject?)?.text() ?? '');
  }

  static $Value? _select(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $List.wrap((target!.$value as ElementObject)
        .select(args[0]?.$value)
        .mapAsList((it) => $ElementObject.wrap(it)));
  }

  static $Value? _selectFirst(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    final value =
        (target!.$value as ElementObject).selectFirst(args[0]!.$value);

    return $ElementObject.wrap(value);
  }

  static $Value? _trySelectFirst(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    final value =
        (target!.$value as ElementObject).trySelectFirst(args[0]!.$value);

    return value == null ? null : $ElementObject.wrap(value);
  }

  @override
  String attr(String attr) => $value.attr(attr);

  @override
  List<ElementObject> select(String selector) => $value.select(selector);

  @override
  ElementObject selectFirst(String selector) => $value.selectFirst(selector);
  @override
  String text() => $value.text();

  @override
  ElementObject? trySelectFirst(String selector) =>
      $value.selectFirst(selector);
}

class $Element implements $Instance {
  $Element.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'Element'));

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
  final Element $value;
}
