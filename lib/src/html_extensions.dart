import 'package:html/dom.dart';

extension DocumentExtension on Document {
  List<Element> select(String selector) {
    try {
      return querySelectorAll(selector);
    } catch (e) {
      return [];
    }
  }

  Element? selectFirst(String selector) {
    try {
      return querySelector(selector);
    } catch (e) {
      return null;
    }
  }

  String? attr(String attribute) {
    try {
      return attributes[attribute];
    } catch (e) {
      return null;
    }
  }
}

extension ElementExtensions on Element {
  List<Element> select(String selector) {
    try {
      return querySelectorAll(selector);
    } catch (e) {
      return [];
    }
  }

  Element? selectFirst(String selector) {
    try {
      return querySelector(selector);
    } catch (e) {
      return null;
    }
  }

  String? attr(String attribute) {
    try {
      return attributes[attribute];
    } catch (e) {
      return null;
    }
  }

  String? get getSrc => attr('src');

  String? get getImg => selectFirst('img')?.attr('src');

  String? get getHref => attr('href');

  String? get getDataSrc => attr('data-src');
}
