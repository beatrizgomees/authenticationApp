import 'package:authentication_app/src/features/utils/exceptions/app_exceptions.dart';

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}
