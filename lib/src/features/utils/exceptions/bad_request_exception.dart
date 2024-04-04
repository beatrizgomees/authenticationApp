import 'package:authentication_app/src/features/utils/exceptions/app_exceptions.dart';

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Invalid request');
}
