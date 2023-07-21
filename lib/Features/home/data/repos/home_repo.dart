import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<List<BookModel>> fetchBestSellerBooks();
  Future<List<BookModel>> fetchFeatureBooks();
}
