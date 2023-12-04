import 'dart:convert';

extension MapExtenstions on Map<String, String> {
  toJson() => json.encode(this);
}
