extension DateTimeExtenstions on DateTime {
  String toFormattedString() {
    return '$day ${getMonthName()}, $year';
  }

  String getMonthName() {
    switch (month) {
      case DateTime.january:
        return "Janurary";
      case DateTime.february:
        return "February";
      case DateTime.march:
        return "March";
      case DateTime.april:
        return "April";
      case DateTime.may:
        return "May";
      case DateTime.june:
        return "June";
      case DateTime.july:
        return "July";
      case DateTime.august:
        return "August";
      case DateTime.september:
        return "September";
      case DateTime.october:
        return "October";
      case DateTime.november:
        return "November";
      case DateTime.december:
        return "December";
      default:
        return "";
    }
  }
}
