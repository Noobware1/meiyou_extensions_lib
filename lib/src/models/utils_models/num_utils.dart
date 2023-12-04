
class NumUtils {
  static int compareTo(dynamic a, dynamic b) {
    try {
      return (num.parse(a.toString())).compareTo(num.parse(b.toString()));
    } catch (e) {
      print(e);
      return -1;
    }
  }
}

