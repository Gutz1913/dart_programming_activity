class DateUtilities {
  static bool isLeapYear(int year) => (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

    static DateTime? convertToDateTime(String message) {
    // stdout.writeln(message);
    List<String> parts = message.split('/');
    if (parts.length != 3) return null;
    return DateTime.tryParse('${parts[2]}-${parts[1]}-${parts[0]}');
  }
}