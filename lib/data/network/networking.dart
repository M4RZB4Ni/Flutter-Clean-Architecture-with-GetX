import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:wallpaper_application_assessment/app/messages/printers.dart';
import 'package:wallpaper_application_assessment/data/network/exception/network_exceptions.dart';



class NetworkHelper {


  Future<dynamic> get({required final String url}) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url));
      responseJson = _handleResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _handleResponse(final http.Response response) {
    switch (response.statusCode) {
      case 200:
        final dynamic responseJson = json.decode(response.body);
        realDebugPrint(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(message: response.body);
      case 401:
      case 403:
        throw UnauthorisedException(message: response.body);
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}',);
    }

  }

}
