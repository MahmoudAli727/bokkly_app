// ignore_for_file: non_constant_identifier_names

import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/Api_Services.dart';
import 'package:bookly_app/core/utils/function/data_to_lstget.dart';
import 'package:bookly_app/core/utils/function/save_books.dart';

abstract class HomeRemoteDataSource {
  Future<List<book_entity>> fetchFeatureBooks({int pageNumber = 0});
  Future<List<book_entity>> fetchNewestBooks({int pageNumber = 0});
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final Api_Services api_services;

  HomeRemoteDataSourceImp(this.api_services);

  @override
  Future<List<book_entity>> fetchFeatureBooks({int pageNumber = 0}) async {
    var data = await api_services.get(
        endPoint:
            "volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber * 10}");
    List<book_entity> books = getBookslist(data);
    saveBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<book_entity>> fetchNewestBooks({int pageNumber = 0}) async {
    var data = await api_services.get(
        endPoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=programming");
    List<book_entity> books = getBookslist(data);
    saveBooksData(books, kNewestBox);
    return books;
  }
}
