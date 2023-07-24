import 'package:dio/dio.dart';

class Api_Services {
  final Dio _dio;
  final String _base_Url = "https://www.googleapis.com/books/v1/";
  Api_Services(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$_base_Url$endPoint");
    return response.data;
  }
}

//https://www.googleapis.com/books/v1volumes?Filtering=free-ebooks&Sorting=newest &q=subject : programming