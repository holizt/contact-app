import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../../constant/constant.dart';
import '../../utils/handle_error/app_exception.dart';

class ApiBaseHelper {
  Future<dynamic> get({var url}) async {
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: timeOutDuraion));
      return _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    } on TimeoutException {
      throw ApiNotRespondingException('API not responded in time');
    }
  }
}

dynamic _returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      var responJson = response.body;
      return responJson;
    case 201:
      var responJson = response.body;
      return responJson;
    case 400:
      throw BadRequestException(json.decode(response.body.toString()));
    case 401:
    case 403:
      throw UnAuthorizedException(json.decode(response.body.toString()));
    case 500:
    default:
      throw SomethingDataException(
          'Error occured with code : ${response.statusCode}');
  }
}
