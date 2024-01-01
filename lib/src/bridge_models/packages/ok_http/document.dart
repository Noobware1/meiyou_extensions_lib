import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/packages/ok_http/types.dart';
// import 'package:meiyou_extensions_lib/src/bridge_models/element.dart';
import 'package:meiyou_extensions_lib/src/extenstions/iterable.dart';
import 'package:ok_http_dart/dom.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:ok_http_dart/ok_http_dart.dart';
import 'element.dart';

class $Document implements $Instance {
  $Document.wrap(this.$value);

  late final $Instance _superclass = $Object($value);

  static final dartSource = DartSource(OkHttpDartTypes.Document.library, '''
  library document;

  export 'src/document.dart';
''');

  static const $type = BridgeTypeRef(OkHttpDartTypes.Document);

  static const $methods = {
    'select': BridgeMethodDef(BridgeFunctionDef(
      returns:
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list, [$Element.$type])),
      params: [
        BridgeParameter('selector',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
      ],
    )),
    'selectFirst': BridgeMethodDef(BridgeFunctionDef(
      returns: BridgeTypeAnnotation(
        $Element.$type,
      ),
      params: [
        BridgeParameter('selector',
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
      ],
    )),
    // 'trySelectFirst': BridgeMethodDef(
    //   BridgeFunctionDef(
    //       returns: BridgeTypeAnnotation($type, nullable: true),
    //       params: [
    //         BridgeParameter('selector',
    //             BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false)
    //       ]),
    //   isStatic: false,
    // ),
  };

  static const $constructors = {
    '': BridgeConstructorDef(
      BridgeFunctionDef(
        returns: BridgeTypeAnnotation($type),
      ),
    ),
    'html': BridgeConstructorDef(
      BridgeFunctionDef(
        returns: BridgeTypeAnnotation($type),
        namedParams: [],
        params: [
          BridgeParameter('html',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
        ],
      ),
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
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  static $List _select(Runtime runtime, $Value? target, List<$Value?> args) {
    return $List.wrap((target?.$value as Document)
        .select(args[0]?.$value)
        .mapAsList((it) => $Element.wrap(it)));
  }

  static $Element? _selectFirst(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final value = (target?.$value as Document).selectFirst(args[0]?.$value);

    return $Element.wrap(value);
  }

  // static $Value _trySelectFirst(
  //     final Runtime runtime, final $Value? target, final List<$Value?> args) {
  //   final value = (target!.$value as Document).trySelectFirst(args[0]?.$value);

  //   return value == null ? $Element.wrap(value!) : const $null();
  // }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) =>
      _superclass.$setProperty(runtime, identifier, value);

  @override
  final Document $value;

  // static $Value? $new(
  //     final Runtime runtime, final $Value? target, final List<$Value?> args) {
  //   return $Document.wrap(Document(args[0]?.$value));
  // }
}
