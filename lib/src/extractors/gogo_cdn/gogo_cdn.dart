import 'dart:convert';

import 'package:crypto_dart/crypto_dart.dart';
import 'package:meiyou_extenstions/meiyou_extenstions.dart';
import 'package:meiyou_extenstions/src/utils/client.dart';
import 'package:ok_http_dart/ok_http_dart.dart';

class GogoCDN extends ExtractorApi {
  GogoCDN(super.extractorLink);

  @override
  String get name => 'GogoCDN';

  @override
  Future<Video> extract() async {
    final doc = (await client.get(extractorLink.url)).document;
    final script =
        doc.selectFirst('script[data-name="episode"]').attr('data-value');
    final id = doc.selectFirst('#id').attr('value');
    final host = Uri.parse(extractorLink.url).host;
    final encryptedID = _cryptoHandler(_keysAndIV.key, _keysAndIV.iv, id, true);
    final decryptedID = _cryptoHandler(_keysAndIV.key, _keysAndIV.iv, script)
        .replaceFirst(id, encryptedID);

    final encryptedData = (await client.get(
            'https://$host/encrypt-ajax.php?id=$decryptedID&alias=$id',
            headers: {'x-requested-with': 'XMLHttpRequest'}))
        .json((json) => json['data'] as String);

    final decryptedData = _SourceResponse.fromJson(jsonDecode(
        _cryptoHandler(_keysAndIV.secondKey, _keysAndIV.iv, encryptedData)));

    final List<VideoSource> list = [];

    final headers = {'referer': 'https://$host'};

    Future<void> addVideo(_Source source, [bool? backup]) async {
      final label = source.label.toLowerCase();
      final url = source.file;
      if (label != "auto p" && label != "hls p") {
        list.add(VideoSource(
          url: url,
          quality: VideoQuality.getFromString(label),
          format: VideoFormat.other,
          isBackup: backup ?? false,
        ));
      } else {
        list.add(VideoSource(
          url: url,
          format: VideoFormat.hls,
          quality: VideoQuality.hlsMaster,
          isBackup: backup ?? false,
        ));
      }
    }

    for (final e in decryptedData.source) {
      await addVideo(e);
    }
    if (decryptedData.backup != null) {
      for (final e in decryptedData.backup!) {
        await addVideo(e, true);
      }
    }
    return Video(videoSources: list, headers: headers);
  }

  static const _keysAndIV = _Keys('37911490979715163134003223491201',
      '54674138327930866480207815084989', '3134003223491201');

  String _cryptoHandler(String key, String iv, String text,
      [bool encrypt = false]) {
    final options = CipherOptions(
        ivEncoding: 'utf8',
        keyEncoding: 'utf8',
        textEncoding: encrypt ? 'utf8' : 'base64');
    if (encrypt) {
      return CryptoDart.AES
          .encrypt(text, key, iv: iv, options: options)
          .toString();
    } else {
      return CryptoDart.AES
          .decrypt(text, key, iv: iv, options: options)
          .convertToString(CryptoDart.enc.utf8);
    }
  }
}

class _Keys {
  final String key;
  final String secondKey;
  final String iv;

  const _Keys(this.key, this.secondKey, this.iv);
}

class _SourceResponse {
  final List<_Source> source;
  final List<_Source>? backup;

  _SourceResponse(this.source, this.backup);

  factory _SourceResponse.fromJson(dynamic json) {
    return _SourceResponse(
      (json['source'] as List).mapAsList(_Source.fromJson),
      (json['source_bk'] as List?)?.mapAsList(_Source.fromJson),
    );
  }
}

class _Source {
  final String file;
  final String label;
  final String type;

  _Source({required this.label, required this.file, required this.type});

  factory _Source.fromJson(dynamic json) {
    return _Source(
        label: json['label'], file: json['file'], type: json['type']);
  }
}
