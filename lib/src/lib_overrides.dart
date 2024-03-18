import 'dart:io';

import 'package:meiyou_extensions_lib/src/network/network_helper.dart';
import 'package:okhttp/okhttp.dart';

class ExtensionlibOverrides {
  static String sharedPreferencesDir = Directory.current.path;

  static NetworkHelper networkHelper = _FakeNetworkHelper();
}

class _FakeNetworkHelper implements NetworkHelper {
  @override
  OkHttpClient get client => OkHttpClient();

  @override
  String get defaultUserAgentProvider =>
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36 Edg/122.0.0.0';
}
