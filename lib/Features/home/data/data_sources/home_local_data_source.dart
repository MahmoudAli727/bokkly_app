import 'package:bookly_app/Features/home/Domain/entities/Book_entity.dart';

abstract class HomeLocalDataSource {
  List<book_entity> fetchFeatureBooks();
  List<book_entity> fetchNewestBooks();
}

class HomeLocalDataSourceimp extends HomeLocalDataSource {
  @override
  List<book_entity> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  @override
  List<book_entity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
