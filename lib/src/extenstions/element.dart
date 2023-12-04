import 'package:ok_http_dart/dom.dart';
import 'package:ok_http_dart/ok_http_dart.dart';

extension ElementExtenstions on Element {
  String get href => attr('href');
  String get src => attr('src');

  String getBackgroundImage() => RegExp(r"background-image:\surl\('(.*)'\)")
      .firstMatch(attr('style'))!
      .group(1)!;
}
