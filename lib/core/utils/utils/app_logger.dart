class AppLogger {
  static final AppLogger _singleton = AppLogger._internal();
  // late Logger _logger;

  factory AppLogger() {
    return _singleton;
  }

  AppLogger._internal() {
    // _logger = Logger(
    //   printer: PrettyPrinter(
    //     dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    //   ),
    // );
  }

  void info(String message) {
    // _logger.i(message);
  }

  void warning(String message) {
    // _logger.w(message);
  }

  void error(String message) {
    // _logger.e(message);
  }

  void debug(String message) {
    // _logger.d(message);
  }
}
