import 'package:dart_eval/stdlib/core.dart';

extension ObjectNullChecks on Object? {
  bool get isNotNull => this != null && this != const $null();
}
