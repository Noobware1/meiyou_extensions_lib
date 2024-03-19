import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_category.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/models/content_item.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/extension_lib/types.dart';
import 'package:meiyou_extensions_lib/src/models/content.dart';
import 'package:meiyou_extensions_lib/src/models/content_category.dart';
import 'package:meiyou_extensions_lib/src/models/content_item.dart';

import 'package:meiyou_extensions_lib/src/models/info_page.dart';

/// dart_eval bimodal wrapper for [InfoPage]
class $InfoPage implements InfoPage, $Instance {
  /// Configure the [$InfoPage] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'InfoPage.', __$InfoPage$new.call);
    runtime.registerBridgeFunc(
        $type.spec!.library, 'InfoPage.withItem', __$InfoPage$withItem.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.infoPage);

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
                'category',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.contentCategory, []),
                    nullable: false),
                true),
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'url',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'otherTitles',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'status',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.status, []),
                    nullable: true),
                true),
            BridgeParameter(
                'bannerImage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'posterImage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'rating',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                    nullable: true),
                true),
            BridgeParameter(
                'description',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'startDate',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
                    nullable: true),
                true),
            BridgeParameter(
                'duration',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
                    nullable: true),
                true),
            BridgeParameter(
                'genres',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'recommendations',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.contentItem, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'externalIds',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.externalId, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'characters',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.character, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'content',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.content, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: false,
      ),
      'withItem': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          params: [
            BridgeParameter(
                'item',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.contentItem, []),
                    nullable: false),
                false)
          ],
          namedParams: [
            BridgeParameter(
                'category',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.contentCategory, []),
                    nullable: true),
                true),
            BridgeParameter(
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'url',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'otherTitles',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'status',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.status, []),
                    nullable: true),
                true),
            BridgeParameter(
                'bannerImage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'posterImage',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'rating',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                    nullable: true),
                true),
            BridgeParameter(
                'description',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'startDate',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
                    nullable: true),
                true),
            BridgeParameter(
                'duration',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
                    nullable: true),
                true),
            BridgeParameter(
                'genres',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(CoreTypes.string, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'recommendations',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.contentItem, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'externalIds',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.externalId, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'characters',
                BridgeTypeAnnotation(
                    BridgeTypeRef(CoreTypes.list, [
                      BridgeTypeRef(ExtensionLibTypes.character, []),
                    ]),
                    nullable: true),
                true),
            BridgeParameter(
                'content',
                BridgeTypeAnnotation(
                    BridgeTypeRef(ExtensionLibTypes.content, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: true,
      ),
    },
    fields: {
      'category': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(ExtensionLibTypes.contentCategory, []),
              nullable: false),
          isStatic: false),
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'url': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'otherTitles': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: true),
          isStatic: false),
      'status': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.status, []),
              nullable: true),
          isStatic: false),
      'bannerImage': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'posterImage': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'rating': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
              nullable: true),
          isStatic: false),
      'description': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'startDate': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
              nullable: true),
          isStatic: false),
      'duration': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
              nullable: true),
          isStatic: false),
      'genres': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(CoreTypes.string, []),
              ]),
              nullable: true),
          isStatic: false),
      'recommendations': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.contentItem, []),
              ]),
              nullable: true),
          isStatic: false),
      'externalIds': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.externalId, []),
              ]),
              nullable: true),
          isStatic: false),
      'characters': BridgeFieldDef(
          BridgeTypeAnnotation(
              BridgeTypeRef(CoreTypes.list, [
                BridgeTypeRef(ExtensionLibTypes.character, []),
              ]),
              nullable: true),
          isStatic: false),
      'content': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(ExtensionLibTypes.content, []),
              nullable: true),
          isStatic: false),
    },
    methods: {
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.infoPage, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'category',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.contentCategory, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'url',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'otherTitles',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'status',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.status, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'bannerImage',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'posterImage',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'rating',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'description',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'startDate',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dateTime, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'duration',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.duration, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'genres',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(CoreTypes.string, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'recommendations',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.contentItem, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'externalIds',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.externalId, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'characters',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(CoreTypes.list, [
                        BridgeTypeRef(ExtensionLibTypes.character, []),
                      ]),
                      nullable: true),
                  true),
              BridgeParameter(
                  'content',
                  BridgeTypeAnnotation(
                      BridgeTypeRef(ExtensionLibTypes.content, []),
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

  /// Wrap an [InfoPage] in an [$InfoPage]
  $InfoPage.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'category':
        return $ContentCategory.wrap($value.category);
      case 'name':
        return $String($value.name);
      case 'url':
        return $String($value.url);
      case 'otherTitles':
        return $value.otherTitles == null
            ? $null()
            : $List.wrap(List.generate(
                ($value.otherTitles as List<String>).length, (index) {
                return $String($value.otherTitles![index]);
              })) as $Value?;
      case 'status':
        return $value.status == null ? $null() : $Status.wrap($value.status!);
      case 'bannerImage':
        return $value.bannerImage == null
            ? $null()
            : $String($value.bannerImage!);
      case 'posterImage':
        return $value.posterImage == null
            ? $null()
            : $String($value.posterImage!);
      case 'rating':
        return $value.rating == null ? $null() : $double($value.rating!);
      case 'description':
        return $value.description == null
            ? $null()
            : $String($value.description!);
      case 'startDate':
        return $value.startDate == null
            ? $null()
            : $DateTime.wrap($value.startDate!);
      case 'duration':
        return $value.duration == null
            ? $null()
            : $Duration.wrap($value.duration!);
      case 'genres':
        return $value.genres == null
            ? $null()
            : $List.wrap(
                List.generate(($value.genres as List<String>).length, (index) {
                return $String($value.genres![index]);
              })) as $Value?;
      case 'recommendations':
        return $value.recommendations == null
            ? $null()
            : $List.wrap(List.generate(
                ($value.recommendations as List<ContentItem>).length, (index) {
                return $ContentItem.wrap($value.recommendations![index]);
              })) as $Value?;
      case 'externalIds':
        return $value.externalIds == null
            ? $null()
            : $List.wrap(List.generate(
                ($value.externalIds as List<ExternalId>).length, (index) {
                return $ExternalId.wrap($value.externalIds![index]);
              })) as $Value?;
      case 'characters':
        return $value.characters == null
            ? $null()
            : $List.wrap(List.generate(
                ($value.characters as List<Character>).length, (index) {
                return $Character.wrap($value.characters![index]);
              })) as $Value?;
      case 'content':
        return $value.content == null ? $null() : _wrappedContent;
      case 'copyWith':
        return __$copyWith;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  $Value get _wrappedContent {
    if (content is Movie) {
      return $Movie.wrap(content as Movie);
    } else if (content is Series) {
      return $Series.wrap(content as Series);
    } else if (content is Anime) {
      return $Anime.wrap(content as Anime);
    } else if (content is LazyContent) {
      return $LazyContent.wrap(content as LazyContent);
    } else {
      return $Content.wrap(content as Content);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  InfoPage get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final InfoPage $value;

  @override
  ContentCategory get category => $value.category;
  @override
  String get name => $value.name;
  @override
  String get url => $value.url;
  @override
  List<String>? get otherTitles => $value.otherTitles;
  @override
  Status? get status => $value.status;
  @override
  String? get bannerImage => $value.bannerImage;
  @override
  String? get posterImage => $value.posterImage;
  @override
  double? get rating => $value.rating;
  @override
  String? get description => $value.description;
  @override
  DateTime? get startDate => $value.startDate;
  @override
  Duration? get duration => $value.duration;
  @override
  List<String>? get genres => $value.genres;
  @override
  List<ContentItem>? get recommendations => $value.recommendations;
  @override
  List<ExternalId>? get externalIds => $value.externalIds;
  @override
  List<Character>? get characters => $value.characters;
  @override
  Content? get content => $value.content;

  @override
  InfoPage copyWith(
          {ContentCategory? category,
          String? name,
          String? url,
          List<String>? otherTitles,
          Status? status,
          String? bannerImage,
          String? posterImage,
          double? rating,
          String? description,
          DateTime? startDate,
          Duration? duration,
          List<String>? genres,
          List<ContentItem>? recommendations,
          List<ExternalId>? externalIds,
          List<Character>? characters,
          Content? content}) =>
      $value.copyWith(
        category: category,
        name: name,
        url: url,
        otherTitles: otherTitles,
        status: status,
        bannerImage: bannerImage,
        posterImage: posterImage,
        rating: rating,
        description: description,
        startDate: startDate,
        duration: duration,
        genres: genres,
        recommendations: recommendations,
        externalIds: externalIds,
        characters: characters,
        content: content,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as InfoPage;
    final category = args[0]?.$reified as ContentCategory?;
    final name = args[1]?.$value as String?;
    final url = args[2]?.$value as String?;
    final otherTitles = (args[3]?.$reified as List?)?.cast<String>();
    final status = args[4]?.$reified as Status?;
    final bannerImage = args[5]?.$value as String?;
    final posterImage = args[6]?.$value as String?;
    final rating = args[7]?.$value as double?;
    final description = args[8]?.$value as String?;
    final startDate = args[9]?.$reified as DateTime?;
    final duration = args[10]?.$reified as Duration?;
    final genres = (args[11]?.$reified as List?)?.cast<String>();
    final recommendations = (args[12]?.$reified as List?)?.cast<ContentItem>();
    final externalIds = (args[13]?.$reified as List?)?.cast<ExternalId>();
    final characters = (args[14]?.$reified as List?)?.cast<Character>();
    final content = args[15]?.$reified as Content?;
    final $result = obj.copyWith(
      category: category,
      name: name,
      url: url,
      otherTitles: otherTitles,
      status: status,
      bannerImage: bannerImage,
      posterImage: posterImage,
      rating: rating,
      description: description,
      startDate: startDate,
      duration: duration,
      genres: genres,
      recommendations: recommendations,
      externalIds: externalIds,
      characters: characters,
      content: content,
    );
    return $InfoPage.wrap($result);
  }

  static const __$InfoPage$new = $Function(_$InfoPage$new);
  static $Value? _$InfoPage$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final category =
        args[0]?.$reified as ContentCategory? ?? ContentCategory.Others;
    final name = args[1]?.$value as String? ?? '';
    final url = args[2]?.$value as String? ?? '';
    final otherTitles = (args[3]?.$reified as List?)?.cast<String>();
    final status = args[4]?.$reified as Status?;
    final bannerImage = args[5]?.$value as String?;
    final posterImage = args[6]?.$value as String?;
    final rating = args[7]?.$value as double?;
    final description = args[8]?.$value as String?;
    final startDate = args[9]?.$reified as DateTime?;
    final duration = args[10]?.$reified as Duration?;
    final genres = (args[11]?.$reified as List?)?.cast<String>();
    final recommendations = (args[12]?.$reified as List?)?.cast<ContentItem>();
    final externalIds = (args[13]?.$reified as List?)?.cast<ExternalId>();
    final characters = (args[14]?.$reified as List?)?.cast<Character>();
    final content = args[15]?.$reified as Content?;
    return $InfoPage.wrap(InfoPage(
      category: category,
      name: name,
      url: url,
      otherTitles: otherTitles,
      status: status,
      bannerImage: bannerImage,
      posterImage: posterImage,
      rating: rating,
      description: description,
      startDate: startDate,
      duration: duration,
      genres: genres,
      recommendations: recommendations,
      externalIds: externalIds,
      characters: characters,
      content: content,
    ));
  }

  static const __$InfoPage$withItem = $Function(_$InfoPage$withItem);
  static $Value? _$InfoPage$withItem(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final item = args[0]?.$value as ContentItem;
    final category = args[1]?.$value as ContentCategory?;
    final name = args[2]?.$value as String?;
    final url = args[3]?.$value as String?;
    final otherTitles = (args[4]?.$reified as List?)?.cast<String>();
    final status = args[5]?.$value as Status?;
    final bannerImage = args[6]?.$value as String?;
    final posterImage = args[7]?.$value as String?;
    final rating = args[8]?.$value as double?;
    final description = args[9]?.$value as String?;
    final startDate = args[10]?.$value as DateTime?;
    final duration = args[11]?.$value as Duration?;
    final genres = (args[12]?.$reified as List?)?.cast<String>();
    final recommendations = (args[13]?.$reified as List?)?.cast<ContentItem>();
    final externalIds = (args[14]?.$reified as List?)?.cast<ExternalId>();
    final characters = (args[15]?.$reified as List?)?.cast<Character>();
    final content = args[16]?.$reified as Content?;
    return $InfoPage.wrap(InfoPage.withItem(
      item,
      category: category,
      name: name,
      url: url,
      otherTitles: otherTitles,
      status: status,
      bannerImage: bannerImage,
      posterImage: posterImage,
      rating: rating,
      description: description,
      startDate: startDate,
      duration: duration,
      genres: genres,
      recommendations: recommendations,
      externalIds: externalIds,
      characters: characters,
      content: content,
    ));
  }

  @override
  String toString() {
    return $value.toString();
  }
}

/// dart_eval bimodal wrapper for [ExternalId]
class $ExternalId implements ExternalId, $Instance {
  /// Configure the [$ExternalId] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'ExternalId.', __$ExternalId$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.externalId);

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
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false),
            BridgeParameter(
                'id',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                false)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'id': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.externalId, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'id',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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

  /// Wrap an [ExternalId] in an [$ExternalId]
  $ExternalId.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);
      case 'id':
        return $String($value.id);

      case 'toString':
        return __$toString;
      case 'copyWith':
        return __$copyWith;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  ExternalId get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final ExternalId $value;

  @override
  String get name => $value.name;
  @override
  String get id => $value.id;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ExternalId;
    final $result = obj.toString();
    return $String($result);
  }

  @override
  ExternalId copyWith({String? name, String? id}) => $value.copyWith(
        name: name,
        id: id,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as ExternalId;
    final name = args[0]?.$value as String?;
    final id = args[1]?.$value as String?;
    final $result = obj.copyWith(
      name: name,
      id: id,
    );
    return $ExternalId.wrap($result);
  }

  static const __$ExternalId$new = $Function(_$ExternalId$new);
  static $Value? _$ExternalId$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String;
    final id = args[1]?.$value as String;
    return $ExternalId.wrap(ExternalId(
      name: name,
      id: id,
    ));
  }
}

/// dart_eval bimodal wrapper for [Character]
class $Character implements Character, $Instance {
  /// Configure the [$Character] wrapper for use in a [Runtime]
  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        $type.spec!.library, 'Character.', __$Character$new.call);
  }

  late final $Instance _superclass = $Object($value);

  static const $type = BridgeTypeRef(ExtensionLibTypes.character);

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
                'name',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: false),
                true),
            BridgeParameter(
                'image',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true),
            BridgeParameter(
                'role',
                BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                    nullable: true),
                true)
          ],
        ),
        isFactory: false,
      )
    },
    fields: {
      'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: false),
          isStatic: false),
      'image': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
          isStatic: false),
      'role': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
              nullable: true),
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
      'copyWith': BridgeMethodDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation(
                BridgeTypeRef(ExtensionLibTypes.character, []),
                nullable: false),
            params: [],
            namedParams: [
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'image',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
                      nullable: true),
                  true),
              BridgeParameter(
                  'role',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, []),
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

  /// Wrap an [Character] in an [$Character]
  $Character.wrap(this.$value);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String($value.name);
      case 'image':
        return $value.image == null ? $null() : $String($value.image!);
      case 'role':
        return $value.role == null ? $null() : $String($value.role!);

      case 'toString':
        return __$toString;
      case 'copyWith':
        return __$copyWith;
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Character get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      default:
        _superclass.$setProperty(runtime, identifier, value);
    }
  }

  @override
  final Character $value;

  @override
  String get name => $value.name;
  @override
  String? get image => $value.image;
  @override
  String? get role => $value.role;

  @override
  String toString() => $value.toString();
  static const __$toString = $Function(_$toString);
  static $Value? _$toString(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Character;
    final $result = obj.toString();
    return $String($result);
  }

  @override
  Character copyWith({String? name, String? image, String? role}) =>
      $value.copyWith(
        name: name,
        image: image,
        role: role,
      );
  static const __$copyWith = $Function(_$copyWith);
  static $Value? _$copyWith(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final obj = target?.$value as Character;
    final name = args[0]?.$value as String?;
    final image = args[1]?.$value as String?;
    final role = args[2]?.$value as String?;
    final $result = obj.copyWith(
      name: name,
      image: image,
      role: role,
    );
    return $Character.wrap($result);
  }

  static const __$Character$new = $Function(_$Character$new);
  static $Value? _$Character$new(
      Runtime runtime, $Value? target, List<$Value?> args) {
    final name = args[0]?.$value as String? ?? '';
    final image = args[1]?.$value as String?;
    final role = args[2]?.$value as String?;
    return $Character.wrap(Character(
      name: name,
      image: image,
      role: role,
    ));
  }
}

class $Status implements $Instance {
  $Status.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeEnum($declaration);
  }

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        $type.spec!.library, 'Status', $Status.$values);
  }

  static const $type = BridgeTypeRef(ExtensionLibTypes.status);

  static const $declaration = BridgeEnumDef($type,
      values: ['Completed', 'Ongoing', 'Unknown'],
      methods: {},
      getters: {},
      setters: {},
      fields: {});

  static final $values = {
    'Completed': $Status.wrap(Status.Completed),
    'Ongoing': $Status.wrap(Status.Ongoing),
    'Unknown': $Status.wrap(Status.Unknown),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  Status get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    _superclass.$setProperty(runtime, identifier, value);
  }

  @override
  final Status $value;

  @override
  String toString() {
    return $value.toString();
  }
}
