import 'package:dio/dio.dart';

class Api_Services {
  final Dio _dio;
  final String base_Url = "https://www.googleapis.com/books/v1";
  Api_Services(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$base_Url$endPoint");
    return response.data;
  }
}
