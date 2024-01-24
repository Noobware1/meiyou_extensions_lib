import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/element.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/html_extensions.dart';

/// dart_eval bimodal wrapper for [Document]
class $Document implements $Instance {
  /// Configure the [$Document] wrapper for use in a [Runtime]
  static void configureForCompileTime(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(htmlLib, 'Document.', __$Document$new.call);
    runtime.registerBridgeFunc(htmlLib, 'Document.html', __$Document$html.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(HTMLTypes.document);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [],
          namedParams: [],
        ),
        isFactory: false,
      ),
      'Document.html': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'html',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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
      'select': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeRef(HTMLTypes.element, []),
                ]),
                nullable: false),
            params: [
              BridgeParameter(
                  'selector',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'selectFirst': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                nullable: true),
            params: [
              BridgeParameter(
                  'selector',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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
      'clone': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.document, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'deep',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'createElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'tag',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'createElementNS': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'namespaceUri',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false),
              BridgeParameter(
                  'tag',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    getters: {
      'text': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'nodeType': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'documentElement': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'head': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'body': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'outerHtml': BridgeMethodDef(
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

  /// Wrap an [Document] in an [$Document]
  $Document.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'text':
        return $String($value.outerHtml);
      case 'select':
        return __$select;
      case 'selectFirst':
        return __$selectFirst;
      case 'attr':
        return __$attr;
      case 'nodeType':
        return $int($value.nodeType);
      case 'documentElement':
        return $value.documentElement == null
            ? $null()
            : $Element.wrap($value.documentElement!);
      case 'head':
        return $value.head == null ? $null() : $Element.wrap($value.head!);
      case 'body':
        return $value.body == null ? $null() : $Element.wrap($value.body!);
      case 'outerHtml':
        return $String($value.outerHtml);
      case 'toString':
        return __$toString;
      case 'clone':
        return __$clone;
      case 'createElement':
        return __$createElement;
      case 'createElementNS':
        return __$createElementNS;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Document get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Document $value;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Document;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$select = $Function(_$select);
  static $Value? _$select(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Document;
    final selector = args[0]?.$reified as String;
    final $result = obj.select(selector);
    return $List.wrap(List.generate($result.length, (index) {
      return $Element.wrap($result[index]);
    }));
  }

  static const __$selectFirst = $Function(_$selectFirst);
  static $Value? _$selectFirst(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Document;
    final selector = args[0]?.$reified as String;
    final $result = obj.selectFirst(
      selector,
    );
    return $result == null ? $null() : $Element.wrap($result);
  }

  static const __$attr = $Function(_$attr);
  static $Value? _$attr(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Document;
    final attribute = args[0]?.$reified as String;
    final $result = obj.attr(
      attribute,
    );
    return $result == null ? $null() : $String($result);
  }

  static const __$clone = $Function(_$clone);
  static $Value? _$clone(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Document;
    final deep = args[0]?.$reified as bool;
    final $result = obj.clone(
      deep,
    );
    return $Document.wrap($result);
  }

  static const __$createElement = $Function(_$createElement);
  static $Value? _$createElement(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Document;
    final tag = args[0]?.$reified as String;
    final $result = obj.createElement(tag);
    return $Element.wrap($result);
  }

  static const __$createElementNS = $Function(_$createElementNS);
  static $Value? _$createElementNS(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Document;
    final namespaceUri = args[0]?.$value as String?;
    final tag = args[1]?.$value as String?;
    final $result = obj.createElementNS(namespaceUri, tag);
    return $Element.wrap($result);
  }

  static const __$Document$new = $Function(_$Document$new);
  static $Value? _$Document$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    return $Document.wrap(Document());
  }

  static const __$Document$html = $Function(_$Document$html);
  static $Value? _$Document$html(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final html = args[0]?.$reified as String;
    return $Document.wrap(Document.html(html));
  }
}
