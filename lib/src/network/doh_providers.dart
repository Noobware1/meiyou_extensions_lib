// ignore_for_file: constant_identifier_names

import 'package:okhttp/dns.dart';
import 'package:okhttp/okhttp.dart';

enum DohProviders {
  CLOUDFLARE(1),
  GOOGLE(2),
  ADGUARD(3),
  QUAD9(4),
  ALIDNS(5),
  DNSPOD(6),
  Doh360(7),
  QUAD101(8),
  MULLVAD(9),
  CONTROLD(10),
  NJALLA(11),
  SHECAN(12),
  LIBREDNS(13);

  const DohProviders(this.value);

  final int value;
}

Future<OkHttpClientBuilder> dohProvider(
    OkHttpClientBuilder builder, int provider) {
  switch (provider) {
    case 1:
      return dohCloudflare(builder);
    case 2:
      return dohGoogle(builder);
    case 3:
      return dohAdGuard(builder);
    case 4:
      return dohQuad9(builder);
    case 5:
      return dohAliDNS(builder);
    case 6:
      return dohDNSPod(builder);
    case 7:
      return doh360(builder);
    case 8:
      return dohQuad101(builder);
    case 9:
      return dohMullvad(builder);
    case 10:
      return dohControlD(builder);
    case 11:
      return dohNajalla(builder);
    case 12:
      return dohShecan(builder);
    case 13:
      return dohLibreDNS(builder);
    default:
      return Future.value(builder);
  }
}

Future<OkHttpClientBuilder> dohCloudflare(OkHttpClientBuilder builder) async {
  return builder.dns(DnsOverHttps.Builder()
      .client(builder.build())
      .url(Uri.parse("https://cloudflare-dns.com/dns-query"))
      .bootstrapDnsHosts(await Future.wait([
        getByIp("162.159.36.1"),
        getByIp("162.159.46.1"),
        getByIp("1.1.1.1"),
        getByIp("1.0.0.1"),
        getByIp("162.159.132.53"),
        getByIp("2606:4700:4700::1111"),
        getByIp("2606:4700:4700::1001"),
        getByIp("2606:4700:4700::0064"),
        getByIp("2606:4700:4700::6400"),
      ]))
      .build());
}

Future<OkHttpClientBuilder> dohGoogle(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://dns.google/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("8.8.4.4"),
          getByIp("8.8.8.8"),
          getByIp("2001:4860:4860::8888"),
          getByIp("2001:4860:4860::8844"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> dohAdGuard(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://dns-unfiltered.adguard.com/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("94.140.14.140"),
          getByIp("94.140.14.141"),
          getByIp("2a10:50c0::1:ff"),
          getByIp("2a10:50c0::2:ff"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> dohQuad9(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://dns.quad9.net/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("9.9.9.9"),
          getByIp("149.112.112.112"),
          getByIp("2620:fe::fe"),
          getByIp("2620:fe::9"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> dohAliDNS(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://dns.alidns.com/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("223.5.5.5"),
          getByIp("223.6.6.6"),
          getByIp("2400:3200::1"),
          getByIp("2400:3200:baba::1"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> dohDNSPod(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://doh.pub/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("1.12.12.12"),
          getByIp("120.53.53.53"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> doh360(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://doh.360.cn/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("101.226.4.6"),
          getByIp("218.30.118.6"),
          getByIp("123.125.81.6"),
          getByIp("140.207.198.6"),
          getByIp("180.163.249.75"),
          getByIp("101.199.113.208"),
          getByIp("36.99.170.86"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> dohQuad101(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://dns.twnic.tw/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("101.101.101.101"),
          getByIp("2001:de4::101"),
          getByIp("2001:de4::102"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> dohMullvad(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://dns.mullvad.net/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("194.242.2.2"),
          getByIp("2a07:e340::2"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> dohControlD(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://freedns.controld.com/p0"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("76.76.2.0"),
          getByIp("76.76.10.0"),
          getByIp("2606:1a40::"),
          getByIp("2606:1a40:1::"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> dohNajalla(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://dns.njal.la/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("95.215.19.53"),
          getByIp("2001:67c:2354:2::53"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> dohShecan(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://free.shecan.ir/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("178.22.122.100"),
          getByIp("185.51.200.2"),
        ]))
        .build(),
  );
}

Future<OkHttpClientBuilder> dohLibreDNS(OkHttpClientBuilder builder) async {
  return builder.dns(
    DnsOverHttps.Builder()
        .client(builder.build())
        .url(Uri.parse("https://doh.libredns.gr/dns-query"))
        .bootstrapDnsHosts(await Future.wait([
          getByIp("116.202.176.26"),
          getByIp("2a01:4f8:1c0c:8274::1"),
        ]))
        .build(),
  );
}
