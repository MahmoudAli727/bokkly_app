// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/Api_Services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Home_repo_imp extends HomeRepo {
  final Api_Services api_service;

  Home_repo_imp(this.api_service);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await api_service.get(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:programming");
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
