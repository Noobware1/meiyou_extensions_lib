import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';

import 'package:meiyou_extensions_lib/src/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/models/search_page.dart';

/// dart_eval bimodal wrapper for [SearchPage]
class $SearchPage implements SearchPage, $Instance {
  /// Configure the [$SearchPage] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'SearchPage.', __$SearchPage$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.searchPage);

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
                'hasNextPage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                    nullable: false),
                false),
            BridgeParameter(
                'entries',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.contentItem, []),
                    ]),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'entries': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.contentItem, []),
              ]),
              nullable: false),
          isStatic: false),
      'hasNextPage': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
              nullable: false),
          isStatic: false),
    },
    methods: {
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.searchPage, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'entries',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.contentItem, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'hasNextPage',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: false),
    },
    getters: {},
    setters: {},
    bridge: false,
    wrap: true,
  );

  /// Wrap an [SearchPage] in an [$SearchPage]
  $SearchPage.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'entries':
        return $List.wrap(List.generate($value.entries.length, (index) {
          return $ContentItem.wrap($value.entries[index]);
        })) as $Value?;
      case 'hasNextPage':
        return $bool($value.hasNextPage);

      case 'copyWith':
        return __$copyWith;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  SearchPage get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final SearchPage $value;

  @override
  List<ContentItem> get entries => $value.entries;
  @override
  bool get hasNextPage => $value.hasNextPage;

  @override
  SearchPage copyWith({List<ContentItem>? entries, bool? hasNextPage}) =>
      $value.copyWith(
        entries: entries,
        hasNextPage: hasNextPage,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as SearchPage;
    final entries = (args[0]?.$reified as List?)?.cast<ContentItem>();
    final hasNextPage = args[1]?.$value as bool?;
    final $result = obj.copyWith(
      entries: entries,
      hasNextPage: hasNextPage,
    );
    return $SearchPage.wrap($result);
  }

  static const __$SearchPage$new = $Function(_$SearchPage$new);
  static $Value? _$SearchPage$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final hasNextPage = args[0]?.$value as bool;
    final entries = (args[1]?.$reified as List).cast<ContentItem>();
    return $SearchPage.wrap(SearchPage(
      hasNextPage: hasNextPage,
      entries: entries,
    ));
  }

  @override
  String toString() {
    return $value.toString();
  }
}
