class ApiConstants {
  static const String baseUrl = 'http://10.0.2.2:8080';
  static String login = "${baseUrl}/login";
  static String register = "${baseUrl}/register";

  static Map<String, String> headers = {'Content-Type': 'application/json'};
}
