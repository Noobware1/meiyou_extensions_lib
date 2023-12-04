// ignore_for_file: constant_identifier_names

import 'package:meiyou_extenstions/src/extenstions/string.dart';

enum ShowStatus {
  Completed,
  Ongoing,
  Unknown;

  @override
  String toString() => super.toString().substringAfter('.');
}
