import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extenstions/src/constants/constants.dart';
import 'package:meiyou_extenstions/src/models/season_data.dart';

class $SeasonData implements SeasonData, $Instance {
  $SeasonData.wrap(this.$value);

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'SeasonData'));

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(bridgeLibary, 'SeasonData.', $SeasonData.$new);
  }

  static const $declaration = BridgeClassDef(BridgeClassType($type),
      constructors: {
        '': BridgeConstructorDef(
          BridgeFunctionDef(
            returns: BridgeTypeAnnotation($type),
            params: [],
            namedParams: [
              BridgeParameter(
                  'season',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num),
                      nullable: true),
                  true),
              BridgeParameter(
                  'name',
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string),
                      nullable: true),
                  true),
            ],
          ),
        )
      },
      fields: {
        'season': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.num), nullable: true),
        ),
        'name': BridgeFieldDef(
          BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string), nullable: true),
        ),
      },
      wrap: true);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'season':
        return $value.season != null ? $num($value.season!) : $null();
      case 'name':
        return $value.name != null ? $String($value.name!) : $null();
      default:
        return $null();
    }
  }

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  static $Value? $new(Runtime runtime, $Value? target, List<$Value?> args) {
    return $SeasonData.wrap(SeasonData(
      season: args[0]?.$value,
      name: args[1]?.$value,
    ));
  }

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  @override
  final SeasonData $value;

  @override
  String? get name => $value.name;

  @override
  num? get season => $value.season;

  @override
  String toString() {
    return $value.toString();
  }
}
