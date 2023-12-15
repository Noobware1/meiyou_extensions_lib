/// A utility class that provides functions for numbers.
class NumUtils {

  /// compares two numbers and returns the result. Similar to the `compareTo` method of the `Comparable` class
  static int compareTo(dynamic a, dynamic b) {
    try {
      return (num.parse(a.toString())).compareTo(num.parse(b.toString()));
    } catch (e) {
      print(e);
      return -1;
    }
  }
}

