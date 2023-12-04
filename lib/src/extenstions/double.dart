extension DoubleExtenstions on double {
  int toPercentage() {
    return ((this / 100) * 1000).ceil();
  }
}
