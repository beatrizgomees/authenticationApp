import 'dart:convert';
import 'dart:io';
import 'package:authentication_app/src/features/utils/exceptions/bad_request_exception.dart';
import 'package:authentication_app/src/features/utils/exceptions/unauthorized_exception.dart';
import 'package:http/http.dart' as http;
import 'package:authentication_app/src/features/utils/exceptions/fetch_data_exception.dart';
import 'package:authentication_app/src/features/utils/network/base_api.dart';
import 'package:http/http.dart';

class NetWorkApiService extends BaseApiService {
  @override
  Future getApiResponse(String url) async {
    dynamic responseJson;

    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;

    try {
      Response response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw BadRequestException(response.body.toString());

      case 404:
        throw UnauthorizedException(response.body.toString());

      case 500:
        throw BadRequestException(response.body.toString());

      default:
        throw FetchDataException(
            'Error accured while communicating with server' +
                'with status code' +
                response.statusCode.toString());
    }
  }
}
