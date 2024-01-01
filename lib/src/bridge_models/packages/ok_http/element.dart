import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/types.dart';
import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:ok_http_dart/dom.dart';
import 'package:ok_http_dart/ok_http_dart.dart';

class $Element implements $Instance {
  $Element.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  static final dartSource = DartSource(OkHttpDartTypes.Element.library, '''
  library element;

  export 'src/element.dart';
''');

  static const $type = BridgeTypeRef(OkHttpDartTypes.Element);

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation($type),
              namedParams: [],
              params: []),
        )
      },
      getters: {
        'text': BridgeMethodDef(
          BridgeFunctionDef(
              returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              params: []),
          isStatic: false,
        ),
      },
      fields: {},
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
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'text':
        return $String($value.text);
      case 'attr':
        return const $Function(_attr);
      case 'select':
        return const $Function(_select);
      case 'selectFirst':
        return const $Function(_selectFirst);

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

  @override
  final Element $value;

  static $Value? $new(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $Element.wrap(args[0]?.$value);
  }

  static $Value? _attr(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $String((target!.$value as Element).attr(args[0]?.$value));
  }

  static $Value? _text(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $String((target?.$value as Element?)?.text ?? '');
  }

  static $Value? _select(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    return $List.wrap((target!.$value as Element)
        .select(args[0]?.$value)
        .mapAsList((it) => $Element.wrap(it)));
  }

  static $Value? _selectFirst(
      final Runtime runtime, final $Value? target, final List<$Value?> args) {
    final value = (target!.$value as Element).selectFirst(args[0]!.$value);

    return $Element.wrap(value);
  }

  // static $Value? _trySelectFirst(
  //     final Runtime runtime, final $Value? target, final List<$Value?> args) {
  //   final value = (target!.$value as Element).trySelectFirst(args[0]!.$value);

  //   return value == null ? null : $Element.wrap(value);
  // }
}

// class $Element implements $Instance {
//   $Element.wrap(this.$value);

//   late final $Instance _superclass = $Object($value);

//   static const $type = BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'Element'));

//   static const $declaration = BridgeClassDef(
//     BridgeClassType($type),
//     constructors: {
//       '': BridgeConstructorDef(
//           BridgeFunctionDef(returns: BridgeTypeAnnotation($type)))
//     },
//     wrap: true,
//   );

//   @override
//   $Value? $getProperty(Runtime runtime, String identifier) =>
//       _superclass.$getProperty(runtime, identifier);

//   @override
//   int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

//   @override
//   get $reified => $value;

//   @override
//   void $setProperty(Runtime runtime, String identifier, $Value value) =>
//       _superclass.$setProperty(runtime, identifier, value);

//   @override
//   final Element $value;
// }
