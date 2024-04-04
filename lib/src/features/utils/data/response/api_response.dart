import 'package:authentication_app/src/features/utils/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse.loading() : status = Status.LOADING;

  ApiResponse.complete() : status = Status.COMPLETED;

  ApiResponse.error() : status = Status.ERROR;

  @override
  String toString() {
    return "Status:$status \n Message : $message \n $data";
  }
}
