class ApiConstants {
  static String baseURL = "http://localhost:8080";
  static String login = "${baseURL}/login";
  static String register = "${baseURL}/register";

  static Map<String, String> headers = {'Content-Type': 'application/json'};
}
