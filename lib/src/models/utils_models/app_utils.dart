import 'package:meiyou_extenstions/src/extenstions/iterable.dart';
import 'package:meiyou_extenstions/src/extenstions/string.dart';
import 'package:meiyou_extenstions/src/models/document.dart';
import 'package:meiyou_extenstions/src/models/element.dart';
import 'package:meiyou_extenstions/src/models/media/video/subtitle_format.dart';
import 'package:meiyou_extenstions/src/models/ok_http_response.dart';
import 'package:meiyou_extenstions/src/utils/try_catch.dart';
import 'package:ok_http_dart/dom.dart';
import 'package:ok_http_dart/ok_http_dart.dart';

class AppUtils {
  static Future<OkHttpResponseObject> httpRequest({
    required String url,
    required String method,
    Map<String, String>? headers,
    bool? followRedircts,
    String? cookie,
    String? referer,
    Map<String, dynamic>? params,
    Object? body,
  }) async {
    try {
      final response = await OKHttpClient().request(
        url: url,
        method: method,
        headers: headers,
        followRedircts: followRedircts,
        cookie: cookie,
        referer: referer,
        params: params,
        body: body,
      );
      return OkHttpResponseObject(
        text: response.text,
        statusCode: response.statusCode,
        headers: response.headers,
        hasError: false,
        isRedirect: response.isRedirect,
      );
    } catch (e) {
      return OkHttpResponseObject(
        text: '',
        statusCode: 500,
        headers: {'error': e.toString()},
        hasError: true,
        isRedirect: false,
      );
    }
    // .then((value) => OkHttpResponseObject(
    //       text: value.text,
    //       statusCode: value.statusCode,
    //       headers: value.headers,
    //       isRedirect: value.isRedirect,
    //     ));
  }

  static String encode(String query, [String replaceWith = '%20']) =>
      Uri.encodeQueryComponent(query).replaceAll('+', replaceWith);

  static DateTime toDateTime(
    int year, {
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return DateTime(year, month ?? 1, day ?? 1, hour ?? 0, minute ?? 0,
        second ?? 0, millisecond ?? 0, microsecond ?? 0);
  }

  static DocumentObject parseHtml(String html) =>
      DocumentObject(Document.html(html));

  static List mapList(List list, dynamic Function(dynamic element) generator) =>
      list.mapAsList((it) => generator(it));

  static List<String> selectMultiAttr(
      List<ElementObject> elements, String attr) {
    return elements.mapAsList((it) => it.attr(attr));
  }

  static List<String> selectMultiText(List<ElementObject> elements) {
    return elements.mapAsList((it) => it.text());
  }

  static String httpify(String url) =>
      url.startsWith('//') ? 'https:$url' : url;

  static String getBackgroundImage(String style) {
    return RegExp(r"""background-image:\s?url\(['"](.*)['"]\);""")
            .firstMatch(style)
            ?.group(1) ??
        '';
  }

  static int getMonthByName(String name) {
    name = name.substring(0, 3).toLowerCase();

    Map<String, int> months = {
      'jan': 1,
      'feb': 2,
      'mar': 3,
      'apr': 4,
      'may': 5,
      'jun': 6,
      'jul': 7,
      'aug': 8,
      'sep': 9,
      'oct': 10,
      'nov': 11,
      'dec': 12,
    };

    return months[name]!;
  }

  static SubtitleFormat? getSubtitleFromatFromUrl(String url) {
    final endWith = url.substringSafe(url.length - 4);
    switch (endWith) {
      case '.vtt':
        return SubtitleFormat.vtt;
      case '.srt':
        return SubtitleFormat.srt;
      case '.ass':
        return SubtitleFormat.ass;
      default:
        return null;
    }
  }

  static bool isNotNull(dynamic value) {
    if (value is List) return value.isNotEmpty;
    return value != null;
  }

  static bool evalAndStatements(List<bool> statements) {
    final pass = statements.tryfirstWhere((e) => e == false);
    return pass != null ? false : true;
  }

  static bool evalOrStatements(List<bool> statements) {
    final pass = statements.tryfirstWhere((e) => e == true);
    return pass != null ? true : false;
  }
}
