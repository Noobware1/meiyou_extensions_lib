import 'package:meiyou_extenstions/src/extenstions/iterable.dart';
import 'package:meiyou_extenstions/src/utils/try_catch.dart';
import 'package:ok_http_dart/dom.dart';
import 'package:ok_http_dart/ok_http_dart.dart';

class ElementObject {
  ElementObject(this.element);

  final Element element;

  String attr(String attr) {
    return trySync(() => element.attr(attr)) ?? '';
  }

  String text() {
    return element.text;
  }

  List<ElementObject> select(String selector) {
    return (trySync(() => element.select(selector)) ?? [])
        .mapAsList((it) => ElementObject(it));
  }

  ElementObject selectFirst(String selector) {
    return trySync(() => ElementObject(element.selectFirst(selector))) ??
        ElementObject(Element.tag('div'));
  }

  ElementObject? trySelectFirst(String selector) {
    return trySync(() => ElementObject(element.selectFirst(selector)));
  }
}
