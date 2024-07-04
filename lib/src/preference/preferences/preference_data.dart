abstract class PreferenceData<T> {
  final String key;
  final String title;
  final String summary;
  final T value;
  
  PreferenceData({
    required this.key,
    required this.title,
    required this.summary,
    required this.value,
  });
}
