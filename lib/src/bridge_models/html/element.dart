// ignore_for_file: unnecessary_cast

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';

import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/html_extensions.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/html/plugin.dart';
import 'package:meiyou_extensions_lib/src/html_extensions.dart';

/// dart_eval bimodal wrapper for [Element]
class $Element implements $Instance {
  /// Configure the [$Element] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Element.tag', __$Element$tag.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Element.html', __$Element$html.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(HTMLTypes.element);

  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      $implements: [],
      isAbstract: false,
    ),
    constructors: {
      'Element.tag': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'localName',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                false)
          ],
          namedParams: [],
        ),
        isFactory: false,
      ),
      'Element.html': BridgeConstructorDef(
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
    fields: {
      'namespaceUri': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'localName': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
    },
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
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
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
      'attr': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
              nullable: true),
          params: [
            BridgeParameter('selector',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)), false),
          ],
        ),
      )
    },
    getters: {
      'nodeType': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'previousElementSibling': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'nextElementSibling': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(HTMLTypes.element, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'text': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
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
      'innerHtml': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'id': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'className': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: false),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'getSrc': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'getImg': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'getHref': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
      'getDataSrc': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                nullable: true),
            params: [],
            namedParams: [],
          ),
          isStatic: false),
    },
    setters: {
      'text': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
      'innerHtml': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType, []),
                nullable: false),
            params: [
              BridgeParameter(
                  'value',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: false),
                  false)
            ],
            namedParams: [],
          ),
          isStatic: false),
    },
    bridge: false,
    wrap: true,
  );

  /// Wrap an [Element] in an [$Element]
  $Element.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'getSrc':
        return $value.getSrc == null ? $null() : $String($value.getSrc!);
      case 'getImg':
        return $value.getImg == null ? $null() : $String($value.getImg!);
      case 'getHref':
        return $value.getHref == null ? $null() : $String($value.getHref!);
      case 'getDataSrc':
        return $value.getDataSrc == null
            ? $null()
            : $String($value.getDataSrc!);
      case 'select':
        return __$select;
      case 'selectFirst':
        return __$selectFirst;
      case 'attr':
        return __$attr;
      case 'namespaceUri':
        return $value.namespaceUri == null
            ? $null()
            : $String($value.namespaceUri!);
      case 'localName':
        return $value.localName == null ? $null() : $String($value.localName!);
      case 'nodeType':
        return $int($value.nodeType);
      case 'previousElementSibling':
        return $value.previousElementSibling == null
            ? $null()
            : $Element.wrap($value.previousElementSibling!);
      case 'nextElementSibling':
        return $value.nextElementSibling == null
            ? $null()
            : $Element.wrap($value.nextElementSibling!);
      case 'text':
        return $String($value.text);
      case 'outerHtml':
        return $String($value.outerHtml);
      case 'innerHtml':
        return $String($value.innerHtml);
      case 'id':
        return $String($value.id);
      case 'className':
        return $String($value.className);
      case 'toString':
        return __$toString;
      case 'clone':
        return __$clone;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Element get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'text':
        $value.text = value.$reified as String?;
        break;
      case 'innerHtml':
        $value.innerHtml = value.$reified as String;
        break;
      case 'id':
        $value.id = value.$reified as String;
        break;
      case 'className':
        $value.className = value.$reified as String;
        break;
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Element $value;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Element;
    final $result = obj.toString();
    return $String($result);
  }

  static const __$clone = $Function(_$clone);
  static $Value? _$clone(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Element;
    final deep = args[0]?.$value as bool;
    final $result = obj.clone(deep);
    return $Element.wrap($result);
  }

  static const __$Element$tag = $Function(_$Element$tag);
  static $Value? _$Element$tag(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final localName = args[0]?.$value as String?;
    return $Element.wrap(Element.tag(localName));
  }

  static const __$Element$html = $Function(_$Element$html);
  static $Value? _$Element$html(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final html = args[0]?.$value as String;
    return $Element.wrap(Element.html(html));
  }

  static const __$select = $Function(_$select);
  static $Value? _$select(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Element;
    final selector = args[0]?.$reified as String;
    final $result = obj.select(selector);
    return $List.wrap(List.generate($result.length, (index) {
      return $Element.wrap($result[index]);
    })) as $Value?;
  }

  static const __$selectFirst = $Function(_$selectFirst);
  static $Value? _$selectFirst(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Element;
    final selector = args[0]?.$reified as String;
    final $result = obj.selectFirst(selector);
    return $result == null ? $null() : $Element.wrap($result);
  }

  static const __$attr = $Function(_$attr);
  static $Value? _$attr(Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Element;
    final attribute = args[0]?.$reified as String;
    final $result = obj.attr(attribute);
    return $result == null ? $null() : $String($result);
  }
}
