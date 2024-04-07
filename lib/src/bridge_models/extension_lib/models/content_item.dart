import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_category.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/content_category.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';

/// dart_eval bimodal wrapper for [ContentItem]
class $ContentItem implements ContentItem, $Instance {
  /// Configure the [$ContentItem] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ContentItem.', __$ContentItem$new.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ContentItem.fromJson', __$ContentItem$fromJson);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.contentItem);

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
                'title',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'url',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'poster',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'category',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.contentCategory, []),
                    nullable: false),
                true),
            BridgeParameter(
                'description',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'generes',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'rating',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                    nullable: true),
                true),
            BridgeParameter(
                'currentCount',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: true),
                true),
            BridgeParameter(
                'totalCount',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: false,
      ),
      'fromJson': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'json',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.map, [
                      BridgeTypeRef(CoreTypes.string, []),
                      BridgeTypeRef(CoreTypes.dynamic, []),
                    ]),
                    nullable: false),
                false),
          ],
          namedParams: [],
        ),
        isFactory: true,
      ),
    },
    fields: {
      'title': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'url': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'poster': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'category': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(ExtensionLibTypes.contentCategory, []),
              nullable: false),
          isStatic: false),
      'description': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'generes': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: true),
          isStatic: false),
      'rating': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
              nullable: true),
          isStatic: false),
      'currentCount': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: true),
          isStatic: false),
      'totalCount': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.contentItem, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'title',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'poster',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'category',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.contentCategory, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'description',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'generes',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'rating',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'currentCount',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'totalCount',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []),
                      nullable: true),
                  true)
            ],
          ),
          isStatic: false),
      'toJson': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeRef(CoreTypes.string, []),
                  BridgeTypeRef(CoreTypes.dynamic, []),
                ]),
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

  /// Wrap an [ContentItem] in an [$ContentItem]
  $ContentItem.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'title':
        return $String($value.title);
      case 'url':
        return $String($value.url);
      case 'poster':
        return $String($value.poster);
      case 'category':
        return $ContentCategory.wrap($value.category);
      case 'description':
        return $value.description == null
            ? $null()
            : $String($value.description!);
      case 'generes':
        return $value.generes == null
            ? $null()
            : $List.wrap(
                List.generate(($value.generes as List<String>).length, (index) {
                return $String($value.generes![index]);
              })) as $Value?;
      case 'rating':
        return $value.rating == null ? $null() : $double($value.rating!);
      case 'currentCount':
        return $value.currentCount == null
            ? $null()
            : $int($value.currentCount!);
      case 'totalCount':
        return $value.totalCount == null ? $null() : $int($value.totalCount!);
      case 'copyWith':
        return __$copyWith;
      case 'toJson':
        return __$toJson;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ContentItem get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ContentItem $value;

  @override
  String get title => $value.title;
  @override
  String get url => $value.url;
  @override
  String get poster => $value.poster;
  @override
  ContentCategory get category => $value.category;
  @override
  String? get description => $value.description;
  @override
  List<String>? get generes => $value.generes;
  @override
  double? get rating => $value.rating;
  @override
  int? get currentCount => $value.currentCount;
  @override
  int? get totalCount => $value.totalCount;

  @override
  ContentItem copyWith(
          {String? title,
          String? url,
          String? poster,
          ContentCategory? category,
          String? description,
          List<String>? generes,
          double? rating,
          int? currentCount,
          int? totalCount}) =>
      $value.copyWith(
        title: title,
        url: url,
        poster: poster,
        category: category,
        description: description,
        generes: generes,
        rating: rating,
        currentCount: currentCount,
        totalCount: totalCount,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ContentItem;
    final title = args[0]?.$value as String?;
    final url = args[1]?.$value as String?;
    final poster = args[2]?.$value as String?;
    final category = args[3]?.$reified as ContentCategory?;
    final description = args[4]?.$value as String?;
    final generes = (args[5]?.$reified as List?)?.cast<String>();
    final rating = args[6]?.$value as double?;
    final currentCount = args[7]?.$value as int?;
    final totalCount = args[8]?.$value as int?;
    final $result = obj.copyWith(
      title: title,
      url: url,
      poster: poster,
      category: category,
      description: description,
      generes: generes,
      rating: rating,
      currentCount: currentCount,
      totalCount: totalCount,
    );
    return $ContentItem.wrap($result);
  }

  @override
  Map<String, dynamic> toJson() => $value.toJson();
  static const __$toJson = $Function(_$toJson);
  static $Value? _$toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final $this = target?.$value as ContentItem;
    final $result = $this.toJson();
    return runtime.wrap($result, recursive: true);
  }

  @override
  String toString() => $value.toString();

  static const __$ContentItem$fromJson = $Function(_$ContentItem$fromJson);
  static $Value? _$ContentItem$fromJson(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final json = (args[0]?.$reified as Map).cast<String, dynamic>();
    final $result = ContentItem.fromJson(json);
    return runtime.wrap($result, recursive: true);
  }

  static const __$ContentItem$new = $Function(_$ContentItem$new);
  static $Value? _$ContentItem$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final title = args[0]?.$value as String? ?? '';
    final url = args[1]?.$value as String? ?? '';
    final poster = args[2]?.$value as String? ?? '';
    final category =
        args[3]?.$reified as ContentCategory? ?? ContentCategory.Others;
    final description = args[4]?.$value as String?;
    final generes = (args[5]?.$reified as List?)?.cast<String>();
    final rating = args[6]?.$value as double?;
    final currentCount = args[7]?.$value as int?;
    final totalCount = args[8]?.$value as int?;
    return $ContentItem.wrap(ContentItem(
      title: title,
      url: url,
      poster: poster,
      category: category,
      description: description,
      generes: generes,
      rating: rating,
      currentCount: currentCount,
      totalCount: totalCount,
    ));
  }

  @override
  List<Object?> get props => $value.props;

  @override
  bool? get stringify => $value.stringify;
}
