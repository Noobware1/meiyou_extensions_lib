import 'package:meiyou_extenstions/src/extenstions/iterable.dart';
import 'package:meiyou_extenstions/src/utils/try_catch.dart';
import 'package:ok_http_dart/dom.dart';
import 'package:ok_http_dart/ok_http_dart.dart';

/// `ElementObject` is a class that represents a HTML element.

class ElementObject {
  ElementObject(this._element);

  final Element _element;

  /// Returns the value of the specified attribute of the HTML element.

  String attr(String attr) {
    return trySync(() => _element.attr(attr)) ?? '';
  }

  ///  Returns the text content of the HTML element.

  String text() {
    return _element.text;
  }

  /// select: Returns a list of `ElementObject` objects that match the specified CSS selector.

  List<ElementObject> select(String selector) {
    return (trySync(() => _element.select(selector)) ?? [])
        .mapAsList((it) => ElementObject(it));
  }

  /// Returns the first `ElementObject` object that matches the specified CSS selector. If no match is found, it returns an `ElementObject` with a `div` tag.

  ElementObject selectFirst(String selector) {
    return trySync(() => ElementObject(_element.selectFirst(selector))) ??
        ElementObject(Element.tag('div'));
  }

  /// Similar to `selectFirst`, but it returns `null` if no match is found.

  ElementObject? trySelectFirst(String selector) {
    return trySync(() => ElementObject(_element.selectFirst(selector)));
  }
}
