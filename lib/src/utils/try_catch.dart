T? trySync<T>(T Function() fun) {
  try {
    return fun();
  } catch (e) {
    return null;
  }
}

Future<T?> tryAsync<T>(Future<T> Function() fun) async {
  try {
    return await fun();
  } catch (e) {
    return null;
  }
}
