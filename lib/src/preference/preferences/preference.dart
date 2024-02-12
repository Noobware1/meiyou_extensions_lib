abstract class Preference<T> {
  final String key;
  final String title;
  final String summary;
  final T value;
  final void Function(T oldValue, T newValue)? onPreferenceChange;

  Preference({
    required this.key,
    required this.title,
    required this.summary,
    required this.value,
    this.onPreferenceChange,
  });
}
