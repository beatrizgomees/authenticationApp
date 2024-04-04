import 'package:authentication_app/src/features/utils/exceptions/app_exceptions.dart';

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid Input');
}
