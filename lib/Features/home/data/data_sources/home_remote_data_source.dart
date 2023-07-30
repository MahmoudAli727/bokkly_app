import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/Api_Services.dart';

abstract class HomeRemoteDataSource {
  Future<List<book_entity>> fetchFeatureBooks();
  Future<List<book_entity>> fetchBestSellerBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final Api_Services api_services;

  HomeRemoteDataSourceImp(this.api_services);

  @override
  Future<List<book_entity>> fetchFeatureBooks() async {
    var data = await api_services.get(endPoint: "");
    List<book_entity> books = getBookslist(data);
    return books;
  }

  @override
  Future<List<book_entity>> fetchBestSellerBooks() async {
    var data = await api_services.get(endPoint: "");
    List<book_entity> books = getBookslist(data);
    return books;
  }
}
