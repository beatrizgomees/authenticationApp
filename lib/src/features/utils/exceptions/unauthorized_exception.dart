import 'package:authentication_app/src/features/utils/exceptions/app_exceptions.dart';

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message])
      : super(message, 'Unauthorized request');
}
