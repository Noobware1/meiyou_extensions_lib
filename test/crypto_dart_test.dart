import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:meiyou_extensions_lib/extensions_lib.dart';
import 'package:meiyou_extensions_lib/src/bridge_models/crypto_dart/plugin.dart';
import 'package:test/test.dart';

void main() {
  group('CryptoDart', () {
    late Compiler compiler;
    setUp(() {
      compiler = ExtensionComplier();
    });

    test('Encoders', () async {
      final compiled = compiler.compile({
        'example': {
          'main.dart': '''
// ignore_for_file: unnecessary_this, unnecessary_cast

import 'dart:convert';

import 'package:crypto_dart/crypto_dart.dart';
import 'package:html/dom.dart';
import 'package:meiyou_extensions_lib/html_extensions.dart';
import 'package:meiyou_extensions_lib/models.dart';
import 'package:meiyou_extensions_lib/network.dart';
import 'package:meiyou_extensions_lib/okhttp_extensions.dart';
import 'package:meiyou_extensions_lib/utils.dart';
import 'package:okhttp/okhttp.dart';
import 'package:okhttp/response.dart';

class GogoCDNExtractor {
  GogoCDNExtractor(this.client);

  final OkHttpClient client;

  Future<Video> extract(ExtractorLink extractorLink) async {
    final Document document = await this.client
        .newCall(GET(extractorLink.url))
        .execute()
        .then((value) => value.body.document);

    final iv = StringUtils.substringAfter(
        document.selectFirst("div.wrapper")!.className, ' container-');
    final secretKey = StringUtils.substringAfter(
        document.selectFirst("body[class]")!.className, 'container-');
    final decryptionKey = StringUtils.substringAfter(
        document.selectFirst("div.videocontent")!.className, 'videocontent-');

    final decryptedAjaxParams = cryptoHandler(
      document.selectFirst("script[data-value]")!.attr("data-value")!,
      iv,
      secretKey,
      encrypt: false,
    );

    final httpUrl = Uri.parse(extractorLink.url);
    final host = "https://\${httpUrl.host}";

    final id = httpUrl.queryParameters["id"]!;

    final encryptedId = cryptoHandler(id, iv, secretKey);
    final headers =
        Headers.Builder().add("X-Requested-With", "XMLHttpRequest").build();

    final String encryptedData = await this.client
        .newCall(
          GET(
            "\$host/encrypt-ajax.php?id=\$encryptedId&\$decryptedAjaxParams&alias=\$id",
            headers,
          ),
        )
        .execute()
        .then((value) => (value.body as ResponseBody).json()['data'] as String);

    final decrypted = json.decode(
        cryptoHandler(encryptedData, iv, decryptionKey, encrypt: false));

    final List<VideoSource> list = [];
    for (var e in decrypted['source'] as List) {
      list.add(toVideoSource(e, false));
    }

    if (decrypted['source_bk'] != null) {
      for (var e in decrypted['source_bk'] as List) {
        list.add(toVideoSource(e, true));
      }
    }

    return Video(videoSources: list, headers: {'Referer': 'https://\$host'});
  }

  String cryptoHandler(String text, String iv, String secretKey,
      {encrypt = true}) {
    final options = CipherOptions(
      iv: iv,
      keyEncoding: 'utf8',
      ivEncoding: 'utf8',
      textEncoding: (encrypt) ? 'utf8' : 'base64',
    );

    if (encrypt) {
      return CryptoDart.AES
          .encrypt(text, secretKey, options: options)
          .toString();
    } else {
      return CryptoDart.enc.UTF8
          .stringify(CryptoDart.AES.decrypt(text, secretKey, options: options));
    }
  }

  VideoSource toVideoSource(dynamic j, bool backup) {
    final fileLabel = StringUtils.valueToString(j['label']).toLowerCase();

    final url = j['file'];

    if (isHLS(fileLabel)) {
      return VideoSource(
        url: url,
        quality: VideoQuality.hlsMaster,
        format: VideoFormat.hls,
        isBackup: backup,
      );
    } else {
      return VideoSource(
        url: url,
        quality: VideoQuality.getFromString(fileLabel),
        format: VideoFormat.other,
        isBackup: backup,
      );
    }
  }

  bool isHLS(dynamic filelabel) {
    if (filelabel == 'hls p') {
      return true;
    } else if (filelabel == 'auto p') {
      return true;
    } else {
      return false;
    }
  }
}

main() {
  return GogoCDNExtractor(OkHttpClient());
}
        
          '''
        }
      });
      final runtime = ExtensionLoader.ofProgram(compiled);
      final value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, 'hello world');
    });

    test('AES', () async {
      final compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:crypto_dart/aes.dart';
import 'package:crypto_dart/encoders.dart';

String main() {
  final key = 'password';
  final a = AES().encrypt('hello world', key);
  final b = AES().decrypt(a.toString(), key);
  return Utf8().stringify(b);
}        
          '''
        }
      });
      final runtime = Runtime.ofProgram(compiled)
        ..addPlugin(CryptoDartPlugin());
      final value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, 'hello world');
    });

    test('CryptoDart', () async {
      final compiled = compiler.compile({
        'example': {
          'main.dart': '''
import 'package:crypto_dart/crypto_dart.dart';

String main() {
  final key = 'password';
  final a = CryptoDart.AES.encrypt('hello world', key);
  final b = CryptoDart.AES.decrypt(a.toString(), key);
  return CryptoDart.enc.UTF8.stringify(b);
}
          '''
        }
      });
      final runtime = Runtime.ofProgram(compiled)
        ..addPlugin(CryptoDartPlugin());
      final value = runtime.executeLib('package:example/main.dart', 'main');
      expect((value as $Value).$value, 'hello world');
    });
  });
}
