class AppConstantStrings {
  static const String environment = String.fromEnvironment('mode', defaultValue: 'live');
  static String get baseUrl => environment == 'test' ? testBaseUrl : liveBaseUrl;
  static String get baseUrlTwo => environment == 'test' ? testBaseUrlTwo : liveBaseUrlTwo;
  static String liveBaseUrl = 'BASE_URL';
  static String liveBaseUrlTwo = 'BASE_URL_TWO';
  static String testBaseUrl = 'TEST_BASE_URL';
  static String testBaseUrlTwo = 'TEST_BASE_URL_TWO';
  static String login = 'LOGIN';
  static String verifyOtp = 'VERIFY_OTP';
  static String requestOtp = 'REQUEST_OTP';
  static String logout = 'LOGOUT';
  static String resetPassword = 'RESET_PASSWORD';
  static String profile = 'RPOFILE';
  static String bookings = 'BOOKINGS';
  static String bookingId = 'BOOKINGID';
  static String payment = 'PAYMENT';
  static String workingDays = 'WORKING_DAYS';
  static String editWorkingDays = 'EDIT_WORKING_DAYS';
  static String holidays = 'HOLIDAYS';
  static String addHolidays = 'ADD_HOLIDAYS';
  static String deleteHolidays = 'DELETE_HOLIDAYS';
  static String notification = 'NOTIFICATION';
  static String transactions = 'TRANSACTIONS';
  static String countryList = 'COUNTRY_LIST';
}
