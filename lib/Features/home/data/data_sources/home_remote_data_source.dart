import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookModel>> fetchBestSellerBooks();
  Future<List<BookModel>> fetchFeatureBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  @override
  Future<List<BookModel>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookModel>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
