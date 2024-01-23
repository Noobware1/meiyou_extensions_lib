// ignore_for_file: constant_identifier_names

import 'package:dartx/dartx.dart';


/// `ShowStatus` is an enumeration that represents the status of a show.
///
/// It includes the following statuses:
/// * `Completed`: Represents a show that has been completed.
/// * `Ongoing`: Represents a show that is currently ongoing.
/// * `Unknown`: Represents a show with unknown status.
///
/// Each `ShowStatus` can be converted to a string using the `toString` method, which overrides the default `toString` method
/// to provide a more readable string representation of the `ShowStatus`.
enum ShowStatus {
  Completed,
  Ongoing,
  Unknown;

  @override
  String toString() => super.toString().substringAfter('.');
}
