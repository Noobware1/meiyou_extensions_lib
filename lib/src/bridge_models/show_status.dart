import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:dart_eval/stdlib/core.dart';
import 'package:meiyou_extensions_lib/src/constants/constants.dart';
import 'package:meiyou_extensions_lib/src/models/show_status.dart';

class $ShowStaus implements $Instance {
  $ShowStaus.wrap(this.$value) : _superclass = $Object($value);

  late final $Instance _superclass;

  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
        bridgeLibary, 'ShowStatus', $ShowStaus.$values);
  }

  static const $type =
      BridgeTypeRef(BridgeTypeSpec(bridgeLibary, 'ShowStatus'));

  static const $declaration = BridgeEnumDef($type,
      values: ['Completed', 'Ongoing', 'Unknown'],
      methods: {},
      getters: {},
      setters: {},
      fields: {});

  static final $values = {
    'Completed': $ShowStaus.wrap(ShowStatus.Completed),
    'Ongoing': $ShowStaus.wrap(ShowStatus.Ongoing),
    'Unknown': $ShowStaus.wrap(ShowStatus.Unknown),
  };

  @override
  $Value? $getProperty(Runtime runtime, String identifier) =>
      _superclass.$getProperty(runtime, identifier);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  get $reified => $value;

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {}

  @override
  final ShowStatus $value;

  @override
  String toString() {
    return $value.toString();
  }
}
