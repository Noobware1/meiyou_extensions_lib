class PluginException implements Exception {
  final String message;
  final StackTrace stackTrace;

  PluginException(this.message, this.stackTrace);

  @override
  String toString() {
    return 'PluginException{message: $message, code: $stackTrace}';
  }
}
