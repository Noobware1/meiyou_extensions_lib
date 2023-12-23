import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/extractor_link.dart';

class $ExtractorLink implements ExtractorLink, $Instance {
  $ExtractorLink.wrap(this.$value);

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'ExtractorLink.', $new);
  }

  late final $Instance _superclass = $Object($value);

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'ExtractorLink'));

  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(returns: BridgeTypeAnnotation($type), namedParams: [
          // required this.url, this.posterImage, this.description
          BridgeParameter(
              'name',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string),
              ),
              true),
          BridgeParameter(
              'url',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string),
              ),
              true),
          BridgeParameter(
              'headers',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map),
                  nullable: true),
              true),
          BridgeParameter(
              'referer',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                  nullable: true),
              true),

          BridgeParameter(
              'extra',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map),
                  nullable: true),
              true),
        ]),
      )
    },
    fields: {
      'name': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string),
        ),
      ),
      'url': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string),
        ),
      ),
      'headers': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map), nullable: true),
      ),
      'referer': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string), nullable: true),
      ),
      'extra': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.map), nullable: true),
      ),
    },
    wrap: true,
  );

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $ExtractorLink.wrap(
      ExtractorLink(
          name: args[0]?.$value ?? '',
          url: args[1]?.$value ?? '',
          headers: (args[2]?.$value as Map?)?.map((key, value) => MapEntry(
              (key is $Value) ? key.$value : key,
              (value is $Value) ? value.$value : value)),
          referer: args[3]?.$value,
          extra: (args[4]?.$value as Map?)?.map((key, value) => MapEntry(
              (key is $Value) ? key.$value : key,
              (value is $Value) ? value.$value : value))),
    );
  }

  @override
  Map<String, String>? get headers => $value.headers;

  @override
  String get name => $value.name;

  @override
  String? get referer => $value.referer;

  @override
  String get url => $value.url;

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'name':
        return $String(name);
      case 'url':
        return $String(url);
      case 'referer':
        return referer != null ? $String(referer!) : const $null();
      case 'headers':
        return headers != null
            ? $Map.wrap(headers!
                .map((key, value) => MapEntry($String(key), $String(value))))
            : const $null();
      case 'extra':
        return extra != null
            ? $Map
                .wrap(extra!.map((key, value) => MapEntry($String(key), value)))
            : const $null();
      default:
        return _superclass.$getProperty(runtime, identifier);
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) =>
      _superclass.$setProperty(runtime, identifier, value);

  @override
  ExtractorLink get $reified => $value;

  @override
  final ExtractorLink $value;

  @override
  Map<String, dynamic>? get extra => $value.extra;

  set headers(Map<String, String>? headers) {
    // TODO: implement headers
  }

  set name(String name) {
    // TODO: implement name
  }

  set referer(String? referer) {
    // TODO: implement referer
  }

  set url(String url) {
    // TODO: implement url
  }

  set extra(Map<String, dynamic>? extra) {
    // TODO: implement extra
  }

  @override
  String toString() {
    return $value.toString();
  }
}
